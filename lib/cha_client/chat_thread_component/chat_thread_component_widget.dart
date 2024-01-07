import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/cha_client/chat_thread/chat_thread_widget.dart';
import '/client/community/emptychat/emptychat_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'chat_thread_component_model.dart';
export 'chat_thread_component_model.dart';

class ChatThreadComponentWidget extends StatefulWidget {
  const ChatThreadComponentWidget({
    super.key,
    this.chatRef,
  });

  final ChatsRecord? chatRef;

  @override
  _ChatThreadComponentWidgetState createState() =>
      _ChatThreadComponentWidgetState();
}

class _ChatThreadComponentWidgetState extends State<ChatThreadComponentWidget> {
  late ChatThreadComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatThreadComponentModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        Container(
          width: 396.0,
          height: 20000.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/modules_(1).png',
              ).image,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: StreamBuilder<List<ChatMessagesRecord>>(
                  stream: queryChatMessagesRecord(
                    queryBuilder: (chatMessagesRecord) => chatMessagesRecord
                        .where(
                          'chat',
                          isEqualTo: widget.chatRef?.reference,
                        )
                        .orderBy('timestamp', descending: true),
                    limit: 200,
                  )..listen((snapshot) async {
                      List<ChatMessagesRecord> listViewChatMessagesRecordList =
                          snapshot;
                      if (_model.listViewPreviousSnapshot != null &&
                          !const ListEquality(
                                  ChatMessagesRecordDocumentEquality())
                              .equals(listViewChatMessagesRecordList,
                                  _model.listViewPreviousSnapshot)) {
                        if (!widget.chatRef!.lastMessageSeenBy
                            .contains(currentUserReference)) {
                          await widget.chatRef!.reference.update({
                            ...mapToFirestore(
                              {
                                'last_message_seen_by': FieldValue.arrayUnion(
                                    [currentUserReference]),
                              },
                            ),
                          });
                        }

                        setState(() {});
                      }
                      _model.listViewPreviousSnapshot = snapshot;
                    }),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<ChatMessagesRecord> listViewChatMessagesRecordList =
                        snapshot.data!;
                    if (listViewChatMessagesRecordList.isEmpty) {
                      return const EmptychatWidget();
                    }
                    return ListView.builder(
                      padding: const EdgeInsets.fromLTRB(
                        0,
                        12.0,
                        0,
                        24.0,
                      ),
                      reverse: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewChatMessagesRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewChatMessagesRecord =
                            listViewChatMessagesRecordList[listViewIndex];
                        return Container(
                          decoration: const BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.chatThreadModels.getModel(
                              listViewChatMessagesRecord.reference.id,
                              listViewIndex,
                            ),
                            updateCallback: () => setState(() {}),
                            updateOnChange: true,
                            child: ChatThreadWidget(
                              key: Key(
                                'Key8pg_${listViewChatMessagesRecord.reference.id}',
                              ),
                              chatMessagesRef: listViewChatMessagesRecord,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3.0,
                      color: Color(0x33000000),
                      offset: Offset(0.0, -2.0),
                    )
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller: _model.textController,
                                        focusNode: _model.textFieldFocusNode,
                                        onFieldSubmitted: (_) async {
                                          if (_model.formKey.currentState ==
                                                  null ||
                                              !_model.formKey.currentState!
                                                  .validate()) {
                                            return;
                                          }
                                          // newChatMessage

                                          var chatMessagesRecordReference =
                                              ChatMessagesRecord.collection
                                                  .doc();
                                          await chatMessagesRecordReference
                                              .set(createChatMessagesRecordData(
                                            user: currentUserReference,
                                            chat: widget.chatRef?.reference,
                                            text: _model.textController.text,
                                            timestamp: getCurrentTimestamp,
                                          ));
                                          _model.newChatCopy = ChatMessagesRecord
                                              .getDocumentFromData(
                                                  createChatMessagesRecordData(
                                                    user: currentUserReference,
                                                    chat: widget
                                                        .chatRef?.reference,
                                                    text: _model
                                                        .textController.text,
                                                    timestamp:
                                                        getCurrentTimestamp,
                                                  ),
                                                  chatMessagesRecordReference);
                                          // clearUsers
                                          _model.lastSeenBy = [];
                                          // In order to add a single user reference to a list of user references we are adding our current user reference to a page state.
                                          //
                                          // We will then set the value of the user reference list from this page state.
                                          // addMyUserToList
                                          _model.addToLastSeenBy(
                                              currentUserReference!);
                                          // updateChatDocument

                                          await widget.chatRef!.reference
                                              .update({
                                            ...createChatsRecordData(
                                              lastMessageTime:
                                                  getCurrentTimestamp,
                                              lastMessageSentBy:
                                                  currentUserReference,
                                              lastMessage:
                                                  _model.textController.text,
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'last_message_seen_by':
                                                    _model.lastSeenBy,
                                              },
                                            ),
                                          });
                                          setState(() {
                                            _model.textController?.clear();
                                          });
                                          setState(() {
                                            _model.imagesUploaded = [];
                                          });

                                          setState(() {});
                                        },
                                        autofocus: true,
                                        textCapitalization:
                                            TextCapitalization.sentences,
                                        textInputAction: TextInputAction.send,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          hintText: 'Start typing here...',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall,
                                          errorStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                fontSize: 12.0,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 16.0, 56.0, 16.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        maxLines: 12,
                                        minLines: 1,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .textControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 6.0, 4.0),
                                      child: FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        borderRadius: 20.0,
                                        borderWidth: 1.0,
                                        buttonSize: 40.0,
                                        icon: const Icon(
                                          Icons.send_rounded,
                                          color: Colors.black,
                                          size: 20.0,
                                        ),
                                        onPressed: () async {
                                          final firestoreBatch =
                                              FirebaseFirestore.instance
                                                  .batch();
                                          try {
                                            if (_model.formKey.currentState ==
                                                    null ||
                                                !_model.formKey.currentState!
                                                    .validate()) {
                                              return;
                                            }
                                            // newChatMessage

                                            var chatMessagesRecordReference =
                                                ChatMessagesRecord.collection
                                                    .doc();
                                            firestoreBatch.set(
                                                chatMessagesRecordReference,
                                                createChatMessagesRecordData(
                                                  user: currentUserReference,
                                                  chat:
                                                      widget.chatRef?.reference,
                                                  text: _model
                                                      .textController.text,
                                                  timestamp:
                                                      getCurrentTimestamp,
                                                ));
                                            _model.newChat = ChatMessagesRecord
                                                .getDocumentFromData(
                                                    createChatMessagesRecordData(
                                                      user:
                                                          currentUserReference,
                                                      chat: widget
                                                          .chatRef?.reference,
                                                      text: _model
                                                          .textController.text,
                                                      timestamp:
                                                          getCurrentTimestamp,
                                                    ),
                                                    chatMessagesRecordReference);
                                            // clearUsers
                                            _model.lastSeenBy = [];
                                            // In order to add a single user reference to a list of user references we are adding our current user reference to a page state.
                                            //
                                            // We will then set the value of the user reference list from this page state.
                                            // addMyUserToList
                                            _model.addToLastSeenBy(
                                                currentUserReference!);
                                            // updateChatDocument

                                            firestoreBatch.update(
                                                widget.chatRef!.reference, {
                                              ...createChatsRecordData(
                                                lastMessageTime:
                                                    getCurrentTimestamp,
                                                lastMessageSentBy:
                                                    currentUserReference,
                                                lastMessage:
                                                    _model.textController.text,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'last_message_seen_by':
                                                      _model.lastSeenBy,
                                                },
                                              ),
                                            });
                                            setState(() {
                                              _model.textController?.clear();
                                            });
                                            setState(() {
                                              _model.imagesUploaded = [];
                                            });
                                          } finally {
                                            await firestoreBatch.commit();
                                          }

                                          setState(() {});
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
