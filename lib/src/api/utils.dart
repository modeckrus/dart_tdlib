import "classes.dart";
//import "dart:mirrors";
import "package:reflectable/reflectable.dart";

dynamic tryParse(dynamic obj) {
  if (obj is Map) {
    return obj.containsKey("@type") ?
      (reflector.reflectType(classIndex[obj["@type"]]) as ClassMirror)
        .newInstance("", [obj]) :
      obj;
  }

  return obj;
}

const Map<String, Type> classIndex = {
  "error": Error,
  "ok": Ok,
  "tdlibParameters": TdlibParameters,
  "authenticationCodeTypeTelegramMessage": AuthenticationCodeTypeTelegramMessage,
  "authenticationCodeTypeSms": AuthenticationCodeTypeSms,
  "authenticationCodeTypeCall": AuthenticationCodeTypeCall,
  "authenticationCodeTypeFlashCall": AuthenticationCodeTypeFlashCall,
  "authenticationCodeInfo": AuthenticationCodeInfo,
  "emailAddressAuthenticationCodeInfo": EmailAddressAuthenticationCodeInfo,
  "textEntity": TextEntity,
  "textEntities": TextEntities,
  "formattedText": FormattedText,
  "termsOfService": TermsOfService,
  "authorizationStateWaitTdlibParameters": AuthorizationStateWaitTdlibParameters,
  "authorizationStateWaitEncryptionKey": AuthorizationStateWaitEncryptionKey,
  "authorizationStateWaitPhoneNumber": AuthorizationStateWaitPhoneNumber,
  "authorizationStateWaitCode": AuthorizationStateWaitCode,
  "authorizationStateWaitRegistration": AuthorizationStateWaitRegistration,
  "authorizationStateWaitPassword": AuthorizationStateWaitPassword,
  "authorizationStateReady": AuthorizationStateReady,
  "authorizationStateLoggingOut": AuthorizationStateLoggingOut,
  "authorizationStateClosing": AuthorizationStateClosing,
  "authorizationStateClosed": AuthorizationStateClosed,
  "passwordState": PasswordState,
  "recoveryEmailAddress": RecoveryEmailAddress,
  "temporaryPasswordState": TemporaryPasswordState,
  "localFile": LocalFile,
  "remoteFile": RemoteFile,
  "file": File,
  "inputFileId": InputFileId,
  "inputFileRemote": InputFileRemote,
  "inputFileLocal": InputFileLocal,
  "inputFileGenerated": InputFileGenerated,
  "photoSize": PhotoSize,
  "minithumbnail": Minithumbnail,
  "maskPointForehead": MaskPointForehead,
  "maskPointEyes": MaskPointEyes,
  "maskPointMouth": MaskPointMouth,
  "maskPointChin": MaskPointChin,
  "maskPosition": MaskPosition,
  "pollOption": PollOption,
  "animation": Animation,
  "audio": Audio,
  "document": Document,
  "photo": Photo,
  "sticker": Sticker,
  "video": Video,
  "videoNote": VideoNote,
  "voiceNote": VoiceNote,
  "contact": Contact,
  "location": Location,
  "venue": Venue,
  "game": Game,
  "poll": Poll,
  "profilePhoto": ProfilePhoto,
  "chatPhoto": ChatPhoto,
  "linkStateNone": LinkStateNone,
  "linkStateKnowsPhoneNumber": LinkStateKnowsPhoneNumber,
  "linkStateIsContact": LinkStateIsContact,
  "userTypeRegular": UserTypeRegular,
  "userTypeDeleted": UserTypeDeleted,
  "userTypeBot": UserTypeBot,
  "userTypeUnknown": UserTypeUnknown,
  "botCommand": BotCommand,
  "botInfo": BotInfo,
  "user": User,
  "userFullInfo": UserFullInfo,
  "userProfilePhoto": UserProfilePhoto,
  "userProfilePhotos": UserProfilePhotos,
  "users": Users,
  "chatPermissions": ChatPermissions,
  "chatMemberStatusCreator": ChatMemberStatusCreator,
  "chatMemberStatusAdministrator": ChatMemberStatusAdministrator,
  "chatMemberStatusMember": ChatMemberStatusMember,
  "chatMemberStatusRestricted": ChatMemberStatusRestricted,
  "chatMemberStatusLeft": ChatMemberStatusLeft,
  "chatMemberStatusBanned": ChatMemberStatusBanned,
  "chatMember": ChatMember,
  "chatMembers": ChatMembers,
  "chatMembersFilterContacts": ChatMembersFilterContacts,
  "chatMembersFilterAdministrators": ChatMembersFilterAdministrators,
  "chatMembersFilterMembers": ChatMembersFilterMembers,
  "chatMembersFilterRestricted": ChatMembersFilterRestricted,
  "chatMembersFilterBanned": ChatMembersFilterBanned,
  "chatMembersFilterBots": ChatMembersFilterBots,
  "supergroupMembersFilterRecent": SupergroupMembersFilterRecent,
  "supergroupMembersFilterContacts": SupergroupMembersFilterContacts,
  "supergroupMembersFilterAdministrators": SupergroupMembersFilterAdministrators,
  "supergroupMembersFilterSearch": SupergroupMembersFilterSearch,
  "supergroupMembersFilterRestricted": SupergroupMembersFilterRestricted,
  "supergroupMembersFilterBanned": SupergroupMembersFilterBanned,
  "supergroupMembersFilterBots": SupergroupMembersFilterBots,
  "basicGroup": BasicGroup,
  "basicGroupFullInfo": BasicGroupFullInfo,
  "supergroup": Supergroup,
  "supergroupFullInfo": SupergroupFullInfo,
  "secretChatStatePending": SecretChatStatePending,
  "secretChatStateReady": SecretChatStateReady,
  "secretChatStateClosed": SecretChatStateClosed,
  "secretChat": SecretChat,
  "messageForwardOriginUser": MessageForwardOriginUser,
  "messageForwardOriginHiddenUser": MessageForwardOriginHiddenUser,
  "messageForwardOriginChannel": MessageForwardOriginChannel,
  "messageForwardInfo": MessageForwardInfo,
  "messageSendingStatePending": MessageSendingStatePending,
  "messageSendingStateFailed": MessageSendingStateFailed,
  "message": Message,
  "messages": Messages,
  "foundMessages": FoundMessages,
  "notificationSettingsScopePrivateChats": NotificationSettingsScopePrivateChats,
  "notificationSettingsScopeGroupChats": NotificationSettingsScopeGroupChats,
  "notificationSettingsScopeChannelChats": NotificationSettingsScopeChannelChats,
  "chatNotificationSettings": ChatNotificationSettings,
  "scopeNotificationSettings": ScopeNotificationSettings,
  "draftMessage": DraftMessage,
  "chatTypePrivate": ChatTypePrivate,
  "chatTypeBasicGroup": ChatTypeBasicGroup,
  "chatTypeSupergroup": ChatTypeSupergroup,
  "chatTypeSecret": ChatTypeSecret,
  "chat": Chat,
  "chats": Chats,
  "chatInviteLink": ChatInviteLink,
  "chatInviteLinkInfo": ChatInviteLinkInfo,
  "keyboardButtonTypeText": KeyboardButtonTypeText,
  "keyboardButtonTypeRequestPhoneNumber": KeyboardButtonTypeRequestPhoneNumber,
  "keyboardButtonTypeRequestLocation": KeyboardButtonTypeRequestLocation,
  "keyboardButton": KeyboardButton,
  "inlineKeyboardButtonTypeUrl": InlineKeyboardButtonTypeUrl,
  "inlineKeyboardButtonTypeLoginUrl": InlineKeyboardButtonTypeLoginUrl,
  "inlineKeyboardButtonTypeCallback": InlineKeyboardButtonTypeCallback,
  "inlineKeyboardButtonTypeCallbackGame": InlineKeyboardButtonTypeCallbackGame,
  "inlineKeyboardButtonTypeSwitchInline": InlineKeyboardButtonTypeSwitchInline,
  "inlineKeyboardButtonTypeBuy": InlineKeyboardButtonTypeBuy,
  "inlineKeyboardButton": InlineKeyboardButton,
  "replyMarkupRemoveKeyboard": ReplyMarkupRemoveKeyboard,
  "replyMarkupForceReply": ReplyMarkupForceReply,
  "replyMarkupShowKeyboard": ReplyMarkupShowKeyboard,
  "replyMarkupInlineKeyboard": ReplyMarkupInlineKeyboard,
  "richTextPlain": RichTextPlain,
  "richTextBold": RichTextBold,
  "richTextItalic": RichTextItalic,
  "richTextUnderline": RichTextUnderline,
  "richTextStrikethrough": RichTextStrikethrough,
  "richTextFixed": RichTextFixed,
  "richTextUrl": RichTextUrl,
  "richTextEmailAddress": RichTextEmailAddress,
  "richTextSubscript": RichTextSubscript,
  "richTextSuperscript": RichTextSuperscript,
  "richTextMarked": RichTextMarked,
  "richTextPhoneNumber": RichTextPhoneNumber,
  "richTextIcon": RichTextIcon,
  "richTextAnchor": RichTextAnchor,
  "richTexts": RichTexts,
  "pageBlockCaption": PageBlockCaption,
  "pageBlockListItem": PageBlockListItem,
  "pageBlockHorizontalAlignmentLeft": PageBlockHorizontalAlignmentLeft,
  "pageBlockHorizontalAlignmentCenter": PageBlockHorizontalAlignmentCenter,
  "pageBlockHorizontalAlignmentRight": PageBlockHorizontalAlignmentRight,
  "pageBlockVerticalAlignmentTop": PageBlockVerticalAlignmentTop,
  "pageBlockVerticalAlignmentMiddle": PageBlockVerticalAlignmentMiddle,
  "pageBlockVerticalAlignmentBottom": PageBlockVerticalAlignmentBottom,
  "pageBlockTableCell": PageBlockTableCell,
  "pageBlockRelatedArticle": PageBlockRelatedArticle,
  "pageBlockTitle": PageBlockTitle,
  "pageBlockSubtitle": PageBlockSubtitle,
  "pageBlockAuthorDate": PageBlockAuthorDate,
  "pageBlockHeader": PageBlockHeader,
  "pageBlockSubheader": PageBlockSubheader,
  "pageBlockKicker": PageBlockKicker,
  "pageBlockParagraph": PageBlockParagraph,
  "pageBlockPreformatted": PageBlockPreformatted,
  "pageBlockFooter": PageBlockFooter,
  "pageBlockDivider": PageBlockDivider,
  "pageBlockAnchor": PageBlockAnchor,
  "pageBlockList": PageBlockList,
  "pageBlockBlockQuote": PageBlockBlockQuote,
  "pageBlockPullQuote": PageBlockPullQuote,
  "pageBlockAnimation": PageBlockAnimation,
  "pageBlockAudio": PageBlockAudio,
  "pageBlockPhoto": PageBlockPhoto,
  "pageBlockVideo": PageBlockVideo,
  "pageBlockVoiceNote": PageBlockVoiceNote,
  "pageBlockCover": PageBlockCover,
  "pageBlockEmbedded": PageBlockEmbedded,
  "pageBlockEmbeddedPost": PageBlockEmbeddedPost,
  "pageBlockCollage": PageBlockCollage,
  "pageBlockSlideshow": PageBlockSlideshow,
  "pageBlockChatLink": PageBlockChatLink,
  "pageBlockTable": PageBlockTable,
  "pageBlockDetails": PageBlockDetails,
  "pageBlockRelatedArticles": PageBlockRelatedArticles,
  "pageBlockMap": PageBlockMap,
  "webPageInstantView": WebPageInstantView,
  "webPage": WebPage,
  "address": Address,
  "labeledPricePart": LabeledPricePart,
  "invoice": Invoice,
  "orderInfo": OrderInfo,
  "shippingOption": ShippingOption,
  "savedCredentials": SavedCredentials,
  "inputCredentialsSaved": InputCredentialsSaved,
  "inputCredentialsNew": InputCredentialsNew,
  "inputCredentialsAndroidPay": InputCredentialsAndroidPay,
  "inputCredentialsApplePay": InputCredentialsApplePay,
  "paymentsProviderStripe": PaymentsProviderStripe,
  "paymentForm": PaymentForm,
  "validatedOrderInfo": ValidatedOrderInfo,
  "paymentResult": PaymentResult,
  "paymentReceipt": PaymentReceipt,
  "datedFile": DatedFile,
  "passportElementTypePersonalDetails": PassportElementTypePersonalDetails,
  "passportElementTypePassport": PassportElementTypePassport,
  "passportElementTypeDriverLicense": PassportElementTypeDriverLicense,
  "passportElementTypeIdentityCard": PassportElementTypeIdentityCard,
  "passportElementTypeInternalPassport": PassportElementTypeInternalPassport,
  "passportElementTypeAddress": PassportElementTypeAddress,
  "passportElementTypeUtilityBill": PassportElementTypeUtilityBill,
  "passportElementTypeBankStatement": PassportElementTypeBankStatement,
  "passportElementTypeRentalAgreement": PassportElementTypeRentalAgreement,
  "passportElementTypePassportRegistration": PassportElementTypePassportRegistration,
  "passportElementTypeTemporaryRegistration": PassportElementTypeTemporaryRegistration,
  "passportElementTypePhoneNumber": PassportElementTypePhoneNumber,
  "passportElementTypeEmailAddress": PassportElementTypeEmailAddress,
  "date": Date,
  "personalDetails": PersonalDetails,
  "identityDocument": IdentityDocument,
  "inputIdentityDocument": InputIdentityDocument,
  "personalDocument": PersonalDocument,
  "inputPersonalDocument": InputPersonalDocument,
  "passportElementPersonalDetails": PassportElementPersonalDetails,
  "passportElementPassport": PassportElementPassport,
  "passportElementDriverLicense": PassportElementDriverLicense,
  "passportElementIdentityCard": PassportElementIdentityCard,
  "passportElementInternalPassport": PassportElementInternalPassport,
  "passportElementAddress": PassportElementAddress,
  "passportElementUtilityBill": PassportElementUtilityBill,
  "passportElementBankStatement": PassportElementBankStatement,
  "passportElementRentalAgreement": PassportElementRentalAgreement,
  "passportElementPassportRegistration": PassportElementPassportRegistration,
  "passportElementTemporaryRegistration": PassportElementTemporaryRegistration,
  "passportElementPhoneNumber": PassportElementPhoneNumber,
  "passportElementEmailAddress": PassportElementEmailAddress,
  "inputPassportElementPersonalDetails": InputPassportElementPersonalDetails,
  "inputPassportElementPassport": InputPassportElementPassport,
  "inputPassportElementDriverLicense": InputPassportElementDriverLicense,
  "inputPassportElementIdentityCard": InputPassportElementIdentityCard,
  "inputPassportElementInternalPassport": InputPassportElementInternalPassport,
  "inputPassportElementAddress": InputPassportElementAddress,
  "inputPassportElementUtilityBill": InputPassportElementUtilityBill,
  "inputPassportElementBankStatement": InputPassportElementBankStatement,
  "inputPassportElementRentalAgreement": InputPassportElementRentalAgreement,
  "inputPassportElementPassportRegistration": InputPassportElementPassportRegistration,
  "inputPassportElementTemporaryRegistration": InputPassportElementTemporaryRegistration,
  "inputPassportElementPhoneNumber": InputPassportElementPhoneNumber,
  "inputPassportElementEmailAddress": InputPassportElementEmailAddress,
  "passportElements": PassportElements,
  "passportElementErrorSourceUnspecified": PassportElementErrorSourceUnspecified,
  "passportElementErrorSourceDataField": PassportElementErrorSourceDataField,
  "passportElementErrorSourceFrontSide": PassportElementErrorSourceFrontSide,
  "passportElementErrorSourceReverseSide": PassportElementErrorSourceReverseSide,
  "passportElementErrorSourceSelfie": PassportElementErrorSourceSelfie,
  "passportElementErrorSourceTranslationFile": PassportElementErrorSourceTranslationFile,
  "passportElementErrorSourceTranslationFiles": PassportElementErrorSourceTranslationFiles,
  "passportElementErrorSourceFile": PassportElementErrorSourceFile,
  "passportElementErrorSourceFiles": PassportElementErrorSourceFiles,
  "passportElementError": PassportElementError,
  "passportSuitableElement": PassportSuitableElement,
  "passportRequiredElement": PassportRequiredElement,
  "passportAuthorizationForm": PassportAuthorizationForm,
  "passportElementsWithErrors": PassportElementsWithErrors,
  "encryptedCredentials": EncryptedCredentials,
  "encryptedPassportElement": EncryptedPassportElement,
  "inputPassportElementErrorSourceUnspecified": InputPassportElementErrorSourceUnspecified,
  "inputPassportElementErrorSourceDataField": InputPassportElementErrorSourceDataField,
  "inputPassportElementErrorSourceFrontSide": InputPassportElementErrorSourceFrontSide,
  "inputPassportElementErrorSourceReverseSide": InputPassportElementErrorSourceReverseSide,
  "inputPassportElementErrorSourceSelfie": InputPassportElementErrorSourceSelfie,
  "inputPassportElementErrorSourceTranslationFile": InputPassportElementErrorSourceTranslationFile,
  "inputPassportElementErrorSourceTranslationFiles": InputPassportElementErrorSourceTranslationFiles,
  "inputPassportElementErrorSourceFile": InputPassportElementErrorSourceFile,
  "inputPassportElementErrorSourceFiles": InputPassportElementErrorSourceFiles,
  "inputPassportElementError": InputPassportElementError,
  "messageText": MessageText,
  "messageAnimation": MessageAnimation,
  "messageAudio": MessageAudio,
  "messageDocument": MessageDocument,
  "messagePhoto": MessagePhoto,
  "messageExpiredPhoto": MessageExpiredPhoto,
  "messageSticker": MessageSticker,
  "messageVideo": MessageVideo,
  "messageExpiredVideo": MessageExpiredVideo,
  "messageVideoNote": MessageVideoNote,
  "messageVoiceNote": MessageVoiceNote,
  "messageLocation": MessageLocation,
  "messageVenue": MessageVenue,
  "messageContact": MessageContact,
  "messageGame": MessageGame,
  "messagePoll": MessagePoll,
  "messageInvoice": MessageInvoice,
  "messageCall": MessageCall,
  "messageBasicGroupChatCreate": MessageBasicGroupChatCreate,
  "messageSupergroupChatCreate": MessageSupergroupChatCreate,
  "messageChatChangeTitle": MessageChatChangeTitle,
  "messageChatChangePhoto": MessageChatChangePhoto,
  "messageChatDeletePhoto": MessageChatDeletePhoto,
  "messageChatAddMembers": MessageChatAddMembers,
  "messageChatJoinByLink": MessageChatJoinByLink,
  "messageChatDeleteMember": MessageChatDeleteMember,
  "messageChatUpgradeTo": MessageChatUpgradeTo,
  "messageChatUpgradeFrom": MessageChatUpgradeFrom,
  "messagePinMessage": MessagePinMessage,
  "messageScreenshotTaken": MessageScreenshotTaken,
  "messageChatSetTtl": MessageChatSetTtl,
  "messageCustomServiceAction": MessageCustomServiceAction,
  "messageGameScore": MessageGameScore,
  "messagePaymentSuccessful": MessagePaymentSuccessful,
  "messagePaymentSuccessfulBot": MessagePaymentSuccessfulBot,
  "messageContactRegistered": MessageContactRegistered,
  "messageWebsiteConnected": MessageWebsiteConnected,
  "messagePassportDataSent": MessagePassportDataSent,
  "messagePassportDataReceived": MessagePassportDataReceived,
  "messageUnsupported": MessageUnsupported,
  "textEntityTypeMention": TextEntityTypeMention,
  "textEntityTypeHashtag": TextEntityTypeHashtag,
  "textEntityTypeCashtag": TextEntityTypeCashtag,
  "textEntityTypeBotCommand": TextEntityTypeBotCommand,
  "textEntityTypeUrl": TextEntityTypeUrl,
  "textEntityTypeEmailAddress": TextEntityTypeEmailAddress,
  "textEntityTypeBold": TextEntityTypeBold,
  "textEntityTypeItalic": TextEntityTypeItalic,
  "textEntityTypeCode": TextEntityTypeCode,
  "textEntityTypePre": TextEntityTypePre,
  "textEntityTypePreCode": TextEntityTypePreCode,
  "textEntityTypeTextUrl": TextEntityTypeTextUrl,
  "textEntityTypeMentionName": TextEntityTypeMentionName,
  "textEntityTypePhoneNumber": TextEntityTypePhoneNumber,
  "inputThumbnail": InputThumbnail,
  "inputMessageText": InputMessageText,
  "inputMessageAnimation": InputMessageAnimation,
  "inputMessageAudio": InputMessageAudio,
  "inputMessageDocument": InputMessageDocument,
  "inputMessagePhoto": InputMessagePhoto,
  "inputMessageSticker": InputMessageSticker,
  "inputMessageVideo": InputMessageVideo,
  "inputMessageVideoNote": InputMessageVideoNote,
  "inputMessageVoiceNote": InputMessageVoiceNote,
  "inputMessageLocation": InputMessageLocation,
  "inputMessageVenue": InputMessageVenue,
  "inputMessageContact": InputMessageContact,
  "inputMessageGame": InputMessageGame,
  "inputMessageInvoice": InputMessageInvoice,
  "inputMessagePoll": InputMessagePoll,
  "inputMessageForwarded": InputMessageForwarded,
  "searchMessagesFilterEmpty": SearchMessagesFilterEmpty,
  "searchMessagesFilterAnimation": SearchMessagesFilterAnimation,
  "searchMessagesFilterAudio": SearchMessagesFilterAudio,
  "searchMessagesFilterDocument": SearchMessagesFilterDocument,
  "searchMessagesFilterPhoto": SearchMessagesFilterPhoto,
  "searchMessagesFilterVideo": SearchMessagesFilterVideo,
  "searchMessagesFilterVoiceNote": SearchMessagesFilterVoiceNote,
  "searchMessagesFilterPhotoAndVideo": SearchMessagesFilterPhotoAndVideo,
  "searchMessagesFilterUrl": SearchMessagesFilterUrl,
  "searchMessagesFilterChatPhoto": SearchMessagesFilterChatPhoto,
  "searchMessagesFilterCall": SearchMessagesFilterCall,
  "searchMessagesFilterMissedCall": SearchMessagesFilterMissedCall,
  "searchMessagesFilterVideoNote": SearchMessagesFilterVideoNote,
  "searchMessagesFilterVoiceAndVideoNote": SearchMessagesFilterVoiceAndVideoNote,
  "searchMessagesFilterMention": SearchMessagesFilterMention,
  "searchMessagesFilterUnreadMention": SearchMessagesFilterUnreadMention,
  "chatActionTyping": ChatActionTyping,
  "chatActionRecordingVideo": ChatActionRecordingVideo,
  "chatActionUploadingVideo": ChatActionUploadingVideo,
  "chatActionRecordingVoiceNote": ChatActionRecordingVoiceNote,
  "chatActionUploadingVoiceNote": ChatActionUploadingVoiceNote,
  "chatActionUploadingPhoto": ChatActionUploadingPhoto,
  "chatActionUploadingDocument": ChatActionUploadingDocument,
  "chatActionChoosingLocation": ChatActionChoosingLocation,
  "chatActionChoosingContact": ChatActionChoosingContact,
  "chatActionStartPlayingGame": ChatActionStartPlayingGame,
  "chatActionRecordingVideoNote": ChatActionRecordingVideoNote,
  "chatActionUploadingVideoNote": ChatActionUploadingVideoNote,
  "chatActionCancel": ChatActionCancel,
  "userStatusEmpty": UserStatusEmpty,
  "userStatusOnline": UserStatusOnline,
  "userStatusOffline": UserStatusOffline,
  "userStatusRecently": UserStatusRecently,
  "userStatusLastWeek": UserStatusLastWeek,
  "userStatusLastMonth": UserStatusLastMonth,
  "stickers": Stickers,
  "emojis": Emojis,
  "stickerSet": StickerSet,
  "stickerSetInfo": StickerSetInfo,
  "stickerSets": StickerSets,
  "callDiscardReasonEmpty": CallDiscardReasonEmpty,
  "callDiscardReasonMissed": CallDiscardReasonMissed,
  "callDiscardReasonDeclined": CallDiscardReasonDeclined,
  "callDiscardReasonDisconnected": CallDiscardReasonDisconnected,
  "callDiscardReasonHungUp": CallDiscardReasonHungUp,
  "callProtocol": CallProtocol,
  "callConnection": CallConnection,
  "callId": CallId,
  "callStatePending": CallStatePending,
  "callStateExchangingKeys": CallStateExchangingKeys,
  "callStateReady": CallStateReady,
  "callStateHangingUp": CallStateHangingUp,
  "callStateDiscarded": CallStateDiscarded,
  "callStateError": CallStateError,
  "callProblemEcho": CallProblemEcho,
  "callProblemNoise": CallProblemNoise,
  "callProblemInterruptions": CallProblemInterruptions,
  "callProblemDistortedSpeech": CallProblemDistortedSpeech,
  "callProblemSilentLocal": CallProblemSilentLocal,
  "callProblemSilentRemote": CallProblemSilentRemote,
  "callProblemDropped": CallProblemDropped,
  "call": Call,
  "phoneNumberAuthenticationSettings": PhoneNumberAuthenticationSettings,
  "animations": Animations,
  "importedContacts": ImportedContacts,
  "httpUrl": HttpUrl,
  "inputInlineQueryResultAnimatedGif": InputInlineQueryResultAnimatedGif,
  "inputInlineQueryResultAnimatedMpeg4": InputInlineQueryResultAnimatedMpeg4,
  "inputInlineQueryResultArticle": InputInlineQueryResultArticle,
  "inputInlineQueryResultAudio": InputInlineQueryResultAudio,
  "inputInlineQueryResultContact": InputInlineQueryResultContact,
  "inputInlineQueryResultDocument": InputInlineQueryResultDocument,
  "inputInlineQueryResultGame": InputInlineQueryResultGame,
  "inputInlineQueryResultLocation": InputInlineQueryResultLocation,
  "inputInlineQueryResultPhoto": InputInlineQueryResultPhoto,
  "inputInlineQueryResultSticker": InputInlineQueryResultSticker,
  "inputInlineQueryResultVenue": InputInlineQueryResultVenue,
  "inputInlineQueryResultVideo": InputInlineQueryResultVideo,
  "inputInlineQueryResultVoiceNote": InputInlineQueryResultVoiceNote,
  "inlineQueryResultArticle": InlineQueryResultArticle,
  "inlineQueryResultContact": InlineQueryResultContact,
  "inlineQueryResultLocation": InlineQueryResultLocation,
  "inlineQueryResultVenue": InlineQueryResultVenue,
  "inlineQueryResultGame": InlineQueryResultGame,
  "inlineQueryResultAnimation": InlineQueryResultAnimation,
  "inlineQueryResultAudio": InlineQueryResultAudio,
  "inlineQueryResultDocument": InlineQueryResultDocument,
  "inlineQueryResultPhoto": InlineQueryResultPhoto,
  "inlineQueryResultSticker": InlineQueryResultSticker,
  "inlineQueryResultVideo": InlineQueryResultVideo,
  "inlineQueryResultVoiceNote": InlineQueryResultVoiceNote,
  "inlineQueryResults": InlineQueryResults,
  "callbackQueryPayloadData": CallbackQueryPayloadData,
  "callbackQueryPayloadGame": CallbackQueryPayloadGame,
  "callbackQueryAnswer": CallbackQueryAnswer,
  "customRequestResult": CustomRequestResult,
  "gameHighScore": GameHighScore,
  "gameHighScores": GameHighScores,
  "tonLiteServerResponse": TonLiteServerResponse,
  "tonWalletPasswordSalt": TonWalletPasswordSalt,
  "chatEventMessageEdited": ChatEventMessageEdited,
  "chatEventMessageDeleted": ChatEventMessageDeleted,
  "chatEventPollStopped": ChatEventPollStopped,
  "chatEventMessagePinned": ChatEventMessagePinned,
  "chatEventMessageUnpinned": ChatEventMessageUnpinned,
  "chatEventMemberJoined": ChatEventMemberJoined,
  "chatEventMemberLeft": ChatEventMemberLeft,
  "chatEventMemberInvited": ChatEventMemberInvited,
  "chatEventMemberPromoted": ChatEventMemberPromoted,
  "chatEventMemberRestricted": ChatEventMemberRestricted,
  "chatEventTitleChanged": ChatEventTitleChanged,
  "chatEventPermissionsChanged": ChatEventPermissionsChanged,
  "chatEventDescriptionChanged": ChatEventDescriptionChanged,
  "chatEventUsernameChanged": ChatEventUsernameChanged,
  "chatEventPhotoChanged": ChatEventPhotoChanged,
  "chatEventInvitesToggled": ChatEventInvitesToggled,
  "chatEventSignMessagesToggled": ChatEventSignMessagesToggled,
  "chatEventStickerSetChanged": ChatEventStickerSetChanged,
  "chatEventIsAllHistoryAvailableToggled": ChatEventIsAllHistoryAvailableToggled,
  "chatEvent": ChatEvent,
  "chatEvents": ChatEvents,
  "chatEventLogFilters": ChatEventLogFilters,
  "languagePackStringValueOrdinary": LanguagePackStringValueOrdinary,
  "languagePackStringValuePluralized": LanguagePackStringValuePluralized,
  "languagePackStringValueDeleted": LanguagePackStringValueDeleted,
  "languagePackString": LanguagePackString,
  "languagePackStrings": LanguagePackStrings,
  "languagePackInfo": LanguagePackInfo,
  "localizationTargetInfo": LocalizationTargetInfo,
  "deviceTokenFirebaseCloudMessaging": DeviceTokenFirebaseCloudMessaging,
  "deviceTokenApplePush": DeviceTokenApplePush,
  "deviceTokenApplePushVoIP": DeviceTokenApplePushVoIP,
  "deviceTokenWindowsPush": DeviceTokenWindowsPush,
  "deviceTokenMicrosoftPush": DeviceTokenMicrosoftPush,
  "deviceTokenMicrosoftPushVoIP": DeviceTokenMicrosoftPushVoIP,
  "deviceTokenWebPush": DeviceTokenWebPush,
  "deviceTokenSimplePush": DeviceTokenSimplePush,
  "deviceTokenUbuntuPush": DeviceTokenUbuntuPush,
  "deviceTokenBlackBerryPush": DeviceTokenBlackBerryPush,
  "deviceTokenTizenPush": DeviceTokenTizenPush,
  "pushReceiverId": PushReceiverId,
  "backgroundTypeWallpaper": BackgroundTypeWallpaper,
  "backgroundTypePattern": BackgroundTypePattern,
  "backgroundTypeSolid": BackgroundTypeSolid,
  "background": Background,
  "backgrounds": Backgrounds,
  "inputBackgroundLocal": InputBackgroundLocal,
  "inputBackgroundRemote": InputBackgroundRemote,
  "hashtags": Hashtags,
  "checkChatUsernameResultOk": CheckChatUsernameResultOk,
  "checkChatUsernameResultUsernameInvalid": CheckChatUsernameResultUsernameInvalid,
  "checkChatUsernameResultUsernameOccupied": CheckChatUsernameResultUsernameOccupied,
  "checkChatUsernameResultPublicChatsTooMuch": CheckChatUsernameResultPublicChatsTooMuch,
  "checkChatUsernameResultPublicGroupsUnavailable": CheckChatUsernameResultPublicGroupsUnavailable,
  "pushMessageContentHidden": PushMessageContentHidden,
  "pushMessageContentAnimation": PushMessageContentAnimation,
  "pushMessageContentAudio": PushMessageContentAudio,
  "pushMessageContentContact": PushMessageContentContact,
  "pushMessageContentContactRegistered": PushMessageContentContactRegistered,
  "pushMessageContentDocument": PushMessageContentDocument,
  "pushMessageContentGame": PushMessageContentGame,
  "pushMessageContentGameScore": PushMessageContentGameScore,
  "pushMessageContentInvoice": PushMessageContentInvoice,
  "pushMessageContentLocation": PushMessageContentLocation,
  "pushMessageContentPhoto": PushMessageContentPhoto,
  "pushMessageContentPoll": PushMessageContentPoll,
  "pushMessageContentScreenshotTaken": PushMessageContentScreenshotTaken,
  "pushMessageContentSticker": PushMessageContentSticker,
  "pushMessageContentText": PushMessageContentText,
  "pushMessageContentVideo": PushMessageContentVideo,
  "pushMessageContentVideoNote": PushMessageContentVideoNote,
  "pushMessageContentVoiceNote": PushMessageContentVoiceNote,
  "pushMessageContentBasicGroupChatCreate": PushMessageContentBasicGroupChatCreate,
  "pushMessageContentChatAddMembers": PushMessageContentChatAddMembers,
  "pushMessageContentChatChangePhoto": PushMessageContentChatChangePhoto,
  "pushMessageContentChatChangeTitle": PushMessageContentChatChangeTitle,
  "pushMessageContentChatDeleteMember": PushMessageContentChatDeleteMember,
  "pushMessageContentChatJoinByLink": PushMessageContentChatJoinByLink,
  "pushMessageContentMessageForwards": PushMessageContentMessageForwards,
  "pushMessageContentMediaAlbum": PushMessageContentMediaAlbum,
  "notificationTypeNewMessage": NotificationTypeNewMessage,
  "notificationTypeNewSecretChat": NotificationTypeNewSecretChat,
  "notificationTypeNewCall": NotificationTypeNewCall,
  "notificationTypeNewPushMessage": NotificationTypeNewPushMessage,
  "notificationGroupTypeMessages": NotificationGroupTypeMessages,
  "notificationGroupTypeMentions": NotificationGroupTypeMentions,
  "notificationGroupTypeSecretChat": NotificationGroupTypeSecretChat,
  "notificationGroupTypeCalls": NotificationGroupTypeCalls,
  "notification": Notification,
  "notificationGroup": NotificationGroup,
  "optionValueBoolean": OptionValueBoolean,
  "optionValueEmpty": OptionValueEmpty,
  "optionValueInteger": OptionValueInteger,
  "optionValueString": OptionValueString,
  "jsonObjectMember": JsonObjectMember,
  "jsonValueNull": JsonValueNull,
  "jsonValueBoolean": JsonValueBoolean,
  "jsonValueNumber": JsonValueNumber,
  "jsonValueString": JsonValueString,
  "jsonValueArray": JsonValueArray,
  "jsonValueObject": JsonValueObject,
  "userPrivacySettingRuleAllowAll": UserPrivacySettingRuleAllowAll,
  "userPrivacySettingRuleAllowContacts": UserPrivacySettingRuleAllowContacts,
  "userPrivacySettingRuleAllowUsers": UserPrivacySettingRuleAllowUsers,
  "userPrivacySettingRuleRestrictAll": UserPrivacySettingRuleRestrictAll,
  "userPrivacySettingRuleRestrictContacts": UserPrivacySettingRuleRestrictContacts,
  "userPrivacySettingRuleRestrictUsers": UserPrivacySettingRuleRestrictUsers,
  "userPrivacySettingRules": UserPrivacySettingRules,
  "userPrivacySettingShowStatus": UserPrivacySettingShowStatus,
  "userPrivacySettingShowProfilePhoto": UserPrivacySettingShowProfilePhoto,
  "userPrivacySettingShowLinkInForwardedMessages": UserPrivacySettingShowLinkInForwardedMessages,
  "userPrivacySettingAllowChatInvites": UserPrivacySettingAllowChatInvites,
  "userPrivacySettingAllowCalls": UserPrivacySettingAllowCalls,
  "userPrivacySettingAllowPeerToPeerCalls": UserPrivacySettingAllowPeerToPeerCalls,
  "accountTtl": AccountTtl,
  "session": Session,
  "sessions": Sessions,
  "connectedWebsite": ConnectedWebsite,
  "connectedWebsites": ConnectedWebsites,
  "chatReportSpamState": ChatReportSpamState,
  "chatReportReasonSpam": ChatReportReasonSpam,
  "chatReportReasonViolence": ChatReportReasonViolence,
  "chatReportReasonPornography": ChatReportReasonPornography,
  "chatReportReasonChildAbuse": ChatReportReasonChildAbuse,
  "chatReportReasonCopyright": ChatReportReasonCopyright,
  "chatReportReasonCustom": ChatReportReasonCustom,
  "publicMessageLink": PublicMessageLink,
  "messageLinkInfo": MessageLinkInfo,
  "filePart": FilePart,
  "fileTypeNone": FileTypeNone,
  "fileTypeAnimation": FileTypeAnimation,
  "fileTypeAudio": FileTypeAudio,
  "fileTypeDocument": FileTypeDocument,
  "fileTypePhoto": FileTypePhoto,
  "fileTypeProfilePhoto": FileTypeProfilePhoto,
  "fileTypeSecret": FileTypeSecret,
  "fileTypeSecretThumbnail": FileTypeSecretThumbnail,
  "fileTypeSecure": FileTypeSecure,
  "fileTypeSticker": FileTypeSticker,
  "fileTypeThumbnail": FileTypeThumbnail,
  "fileTypeUnknown": FileTypeUnknown,
  "fileTypeVideo": FileTypeVideo,
  "fileTypeVideoNote": FileTypeVideoNote,
  "fileTypeVoiceNote": FileTypeVoiceNote,
  "fileTypeWallpaper": FileTypeWallpaper,
  "storageStatisticsByFileType": StorageStatisticsByFileType,
  "storageStatisticsByChat": StorageStatisticsByChat,
  "storageStatistics": StorageStatistics,
  "storageStatisticsFast": StorageStatisticsFast,
  "databaseStatistics": DatabaseStatistics,
  "networkTypeNone": NetworkTypeNone,
  "networkTypeMobile": NetworkTypeMobile,
  "networkTypeMobileRoaming": NetworkTypeMobileRoaming,
  "networkTypeWiFi": NetworkTypeWiFi,
  "networkTypeOther": NetworkTypeOther,
  "networkStatisticsEntryFile": NetworkStatisticsEntryFile,
  "networkStatisticsEntryCall": NetworkStatisticsEntryCall,
  "networkStatistics": NetworkStatistics,
  "autoDownloadSettings": AutoDownloadSettings,
  "autoDownloadSettingsPresets": AutoDownloadSettingsPresets,
  "connectionStateWaitingForNetwork": ConnectionStateWaitingForNetwork,
  "connectionStateConnectingToProxy": ConnectionStateConnectingToProxy,
  "connectionStateConnecting": ConnectionStateConnecting,
  "connectionStateUpdating": ConnectionStateUpdating,
  "connectionStateReady": ConnectionStateReady,
  "topChatCategoryUsers": TopChatCategoryUsers,
  "topChatCategoryBots": TopChatCategoryBots,
  "topChatCategoryGroups": TopChatCategoryGroups,
  "topChatCategoryChannels": TopChatCategoryChannels,
  "topChatCategoryInlineBots": TopChatCategoryInlineBots,
  "topChatCategoryCalls": TopChatCategoryCalls,
  "tMeUrlTypeUser": TMeUrlTypeUser,
  "tMeUrlTypeSupergroup": TMeUrlTypeSupergroup,
  "tMeUrlTypeChatInvite": TMeUrlTypeChatInvite,
  "tMeUrlTypeStickerSet": TMeUrlTypeStickerSet,
  "tMeUrl": TMeUrl,
  "tMeUrls": TMeUrls,
  "count": Count,
  "text": Text,
  "seconds": Seconds,
  "deepLinkInfo": DeepLinkInfo,
  "textParseModeMarkdown": TextParseModeMarkdown,
  "textParseModeHTML": TextParseModeHTML,
  "proxyTypeSocks5": ProxyTypeSocks5,
  "proxyTypeHttp": ProxyTypeHttp,
  "proxyTypeMtproto": ProxyTypeMtproto,
  "proxy": Proxy,
  "proxies": Proxies,
  "inputSticker": InputSticker,
  "updateAuthorizationState": UpdateAuthorizationState,
  "updateNewMessage": UpdateNewMessage,
  "updateMessageSendAcknowledged": UpdateMessageSendAcknowledged,
  "updateMessageSendSucceeded": UpdateMessageSendSucceeded,
  "updateMessageSendFailed": UpdateMessageSendFailed,
  "updateMessageContent": UpdateMessageContent,
  "updateMessageEdited": UpdateMessageEdited,
  "updateMessageViews": UpdateMessageViews,
  "updateMessageContentOpened": UpdateMessageContentOpened,
  "updateMessageMentionRead": UpdateMessageMentionRead,
  "updateNewChat": UpdateNewChat,
  "updateChatTitle": UpdateChatTitle,
  "updateChatPhoto": UpdateChatPhoto,
  "updateChatPermissions": UpdateChatPermissions,
  "updateChatLastMessage": UpdateChatLastMessage,
  "updateChatOrder": UpdateChatOrder,
  "updateChatIsPinned": UpdateChatIsPinned,
  "updateChatIsMarkedAsUnread": UpdateChatIsMarkedAsUnread,
  "updateChatIsSponsored": UpdateChatIsSponsored,
  "updateChatDefaultDisableNotification": UpdateChatDefaultDisableNotification,
  "updateChatReadInbox": UpdateChatReadInbox,
  "updateChatReadOutbox": UpdateChatReadOutbox,
  "updateChatUnreadMentionCount": UpdateChatUnreadMentionCount,
  "updateChatNotificationSettings": UpdateChatNotificationSettings,
  "updateScopeNotificationSettings": UpdateScopeNotificationSettings,
  "updateChatPinnedMessage": UpdateChatPinnedMessage,
  "updateChatReplyMarkup": UpdateChatReplyMarkup,
  "updateChatDraftMessage": UpdateChatDraftMessage,
  "updateChatOnlineMemberCount": UpdateChatOnlineMemberCount,
  "updateNotification": UpdateNotification,
  "updateNotificationGroup": UpdateNotificationGroup,
  "updateActiveNotifications": UpdateActiveNotifications,
  "updateHavePendingNotifications": UpdateHavePendingNotifications,
  "updateDeleteMessages": UpdateDeleteMessages,
  "updateUserChatAction": UpdateUserChatAction,
  "updateUserStatus": UpdateUserStatus,
  "updateUser": UpdateUser,
  "updateBasicGroup": UpdateBasicGroup,
  "updateSupergroup": UpdateSupergroup,
  "updateSecretChat": UpdateSecretChat,
  "updateUserFullInfo": UpdateUserFullInfo,
  "updateBasicGroupFullInfo": UpdateBasicGroupFullInfo,
  "updateSupergroupFullInfo": UpdateSupergroupFullInfo,
  "updateServiceNotification": UpdateServiceNotification,
  "updateFile": UpdateFile,
  "updateFileGenerationStart": UpdateFileGenerationStart,
  "updateFileGenerationStop": UpdateFileGenerationStop,
  "updateCall": UpdateCall,
  "updateUserPrivacySettingRules": UpdateUserPrivacySettingRules,
  "updateUnreadMessageCount": UpdateUnreadMessageCount,
  "updateUnreadChatCount": UpdateUnreadChatCount,
  "updateOption": UpdateOption,
  "updateInstalledStickerSets": UpdateInstalledStickerSets,
  "updateTrendingStickerSets": UpdateTrendingStickerSets,
  "updateRecentStickers": UpdateRecentStickers,
  "updateFavoriteStickers": UpdateFavoriteStickers,
  "updateSavedAnimations": UpdateSavedAnimations,
  "updateSelectedBackground": UpdateSelectedBackground,
  "updateLanguagePackStrings": UpdateLanguagePackStrings,
  "updateConnectionState": UpdateConnectionState,
  "updateTermsOfService": UpdateTermsOfService,
  "updateNewInlineQuery": UpdateNewInlineQuery,
  "updateNewChosenInlineResult": UpdateNewChosenInlineResult,
  "updateNewCallbackQuery": UpdateNewCallbackQuery,
  "updateNewInlineCallbackQuery": UpdateNewInlineCallbackQuery,
  "updateNewShippingQuery": UpdateNewShippingQuery,
  "updateNewPreCheckoutQuery": UpdateNewPreCheckoutQuery,
  "updateNewCustomEvent": UpdateNewCustomEvent,
  "updateNewCustomQuery": UpdateNewCustomQuery,
  "updatePoll": UpdatePoll,
  "updates": Updates,
  "logStreamDefault": LogStreamDefault,
  "logStreamFile": LogStreamFile,
  "logStreamEmpty": LogStreamEmpty,
  "logVerbosityLevel": LogVerbosityLevel,
  "logTags": LogTags,
  "testInt": TestInt,
  "testString": TestString,
  "testBytes": TestBytes,
  "testVectorInt": TestVectorInt,
  "testVectorIntObject": TestVectorIntObject,
  "testVectorString": TestVectorString,
  "testVectorStringObject": TestVectorStringObject,
};