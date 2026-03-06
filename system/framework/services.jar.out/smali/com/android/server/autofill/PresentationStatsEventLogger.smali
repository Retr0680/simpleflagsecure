.class public final Lcom/android/server/autofill/PresentationStatsEventLogger;
.super Ljava/lang/Object;
.source "PresentationStatsEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;,
        Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;,
        Lcom/android/server/autofill/PresentationStatsEventLogger$FillDialogNotShownReason;,
        Lcom/android/server/autofill/PresentationStatsEventLogger$DetectionPreference;,
        Lcom/android/server/autofill/PresentationStatsEventLogger$DatasetPickedReason;,
        Lcom/android/server/autofill/PresentationStatsEventLogger$AuthenticationResult;,
        Lcom/android/server/autofill/PresentationStatsEventLogger$AuthenticationType;,
        Lcom/android/server/autofill/PresentationStatsEventLogger$NotShownReason;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_RESULT_FAILURE:I = 0x2

.field public static final AUTHENTICATION_RESULT_SUCCESS:I = 0x1

.field public static final AUTHENTICATION_RESULT_UNKNOWN:I = 0x0

.field public static final AUTHENTICATION_TYPE_DATASET_AUTHENTICATION:I = 0x1

.field public static final AUTHENTICATION_TYPE_FULL_AUTHENTICATION:I = 0x2

.field public static final AUTHENTICATION_TYPE_UNKNOWN:I = 0x0

.field private static final DEFAULT_VALUE_INT:I = -0x1

.field public static final DETECTION_PREFER_AUTOFILL_PROVIDER:I = 0x1

.field public static final DETECTION_PREFER_PCC:I = 0x2

.field public static final DETECTION_PREFER_UNKNOWN:I = 0x0

.field public static final FILL_DIALOG_NOT_SHOWN_REASON_DELAY_AFTER_ANIMATION_END:I = 0x6

.field public static final FILL_DIALOG_NOT_SHOWN_REASON_FILL_DIALOG_DISABLED:I = 0x1

.field public static final FILL_DIALOG_NOT_SHOWN_REASON_LAST_TRIGGERED_ID_CHANGED:I = 0x3

.field public static final FILL_DIALOG_NOT_SHOWN_REASON_SCREEN_HAS_CREDMAN_FIELD:I = 0x2

.field public static final FILL_DIALOG_NOT_SHOWN_REASON_TIMEOUT_AFTER_DELAY:I = 0x7

.field public static final FILL_DIALOG_NOT_SHOWN_REASON_TIMEOUT_SINCE_IME_ANIMATED:I = 0x5

.field public static final FILL_DIALOG_NOT_SHOWN_REASON_UNKNOWN:I = 0x0

.field public static final FILL_DIALOG_NOT_SHOWN_REASON_WAIT_FOR_IME_ANIMATION:I = 0x4

.field public static final NOT_SHOWN_REASON_ACTIVITY_FINISHED:I = 0x4

.field public static final NOT_SHOWN_REASON_ANY_SHOWN:I = 0x1

.field public static final NOT_SHOWN_REASON_NO_FOCUS:I = 0x8

.field public static final NOT_SHOWN_REASON_REQUEST_FAILED:I = 0x7

.field public static final NOT_SHOWN_REASON_REQUEST_TIMEOUT:I = 0x5

.field public static final NOT_SHOWN_REASON_SESSION_COMMITTED_PREMATURELY:I = 0x6

.field public static final NOT_SHOWN_REASON_SUGGESTION_FILTERED:I = 0xa

.field public static final NOT_SHOWN_REASON_UNKNOWN:I = 0x0

.field public static final NOT_SHOWN_REASON_VIEW_CHANGED:I = 0x3

.field public static final NOT_SHOWN_REASON_VIEW_FOCUSED_BEFORE_FILL_DIALOG_RESPONSE:I = 0x9

.field public static final NOT_SHOWN_REASON_VIEW_FOCUS_CHANGED:I = 0x2

.field public static final PICK_REASON_NO_PCC:I = 0x1

.field public static final PICK_REASON_PCC_DETECTION_ONLY:I = 0x4

.field public static final PICK_REASON_PCC_DETECTION_PREFERRED_WITH_PROVIDER:I = 0x5

.field public static final PICK_REASON_PROVIDER_DETECTION_ONLY:I = 0x2

.field public static final PICK_REASON_PROVIDER_DETECTION_PREFERRED_WITH_PCC:I = 0x3

.field public static final PICK_REASON_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PresentationStatsEventLogger"


# instance fields
.field private final mCallingAppUid:I

.field private mEventInternal:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:I

.field private final mSessionStartTimestamp:J


# direct methods
.method public static synthetic $r8$lambda$2_M-LRswioqL_cN9fWHavb06cWQ(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetDialogDismissed$20(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2iCY15AYcjzToHRc7-48sO2bTEM(Lcom/android/server/autofill/PresentationStatsEventLogger;JLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetFillDialogReadyToShowMs$47(JLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2uM1ismps7tYNC9bDsE0RRgP3ds(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetNoPresentationEventReason$3(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$47qyeaFw58iOY_uUmF_ryOgsRwg(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetNegativeCtaButtonClicked$21(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5mCurjGggUvWqpT_BZR8ZPj-u08(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetDetectionPreference$33(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7ZgwylO2i3qPh8Hb-veQDyLpNZ4(Lcom/android/server/autofill/PresentationStatsEventLogger;ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$logWhenDatasetShown$10(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7wSYvJ8UpuKisM1JLJqKpzJK2Pk(Lcom/android/server/autofill/PresentationStatsEventLogger;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeIncrementCountShown$7(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8sRmcjSGRPiBcJ1yOjPJGajCuow(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$notifyViewEnteredIgnoredDuringAuthCount$45(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AHBpxxZLZ3o9KBr-1_LuSWN32pM(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetNotifyNotExpiringResponseDuringAuth$44(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Az55fhKYdGuVdg2jl8JVrH_E7Ys(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetCountFilteredUserTyping$11(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CQf6yVYe6ZLvoP9CgsKhCINoo5k(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetCountNotShownImeUserNotSeen$13(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DcqcW-Kby76vioBuFq72zV6LpAk(Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetNoPresentationEventReasonSuggestionsFiltered$4(Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IIlVYYuPbcXw1493I7K2s-cJgdU(Lcom/android/server/autofill/PresentationStatsEventLogger;ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetSelectedDatasetPickReason$32(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jj5ksCRkcBu4ROOPRza7b4-XfEM(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetRequestId$0(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JqOm5Mg-KSIawOJ13_o4rRFNi28(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetLatencyDatasetDisplayMillis$29(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KOG1Z2ZDRr1G83o1txF4d3VxDEA(Lcom/android/server/autofill/PresentationStatsEventLogger;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$setPresentationSelectedTimestamp$36(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LvXcmNUkYwwiRiwsNvwIeEvUORc(Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetCountShown$9(Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MttHF3jWZNLdVkQqOv--CfJSIV8(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetSuggestionSentTimestampMs$17(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OnRnVhd-U4VCAlBxPBgVnt_FB8M(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetPositiveCtaButtonClicked$22(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S0nWo7MdotEWpL2a0s1snwlcUgU(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$setHasRelayoutLog$49(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SgCg_eAbw7hdbQWog-D3SfUULiY(Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$updateTextFieldLength$34(Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VAqzKIbt82B8nzvKfT571eFwKeI(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetFillDialogNotShownReason$46(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WV55Uw8UUYev1p8R6i8knfORIc4(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetIsCredentialRequest$1(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WV6cK2z9ug7KiX4ptlbNuWjn1u8(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetFillRequestSentTimestampMs$15(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WsXjzVSWKY62PbytJGulmSKWSOc(Lcom/android/server/autofill/PresentationStatsEventLogger;Lcom/android/server/autofill/ViewState;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$onFieldTextUpdated$35(Lcom/android/server/autofill/ViewState;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WxhRMQDxQ0RuK7PrMHIcGuaIST0(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetFilteredFillableViewsCount$40(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZU3AAYaP-Rf67KwGMwqBLfJmLQ4(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetAuthenticationResult$27(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZVhvmskeCTAeZTKLT07XswKyd2I(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetIsNewRequest$25(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bWONHov9Ida2vWXavB-WAZDGF_E(Ljava/util/List;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetViewFillablesAndCount$38(Ljava/util/List;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cGlnkdTNd7Wirp-iJDndLherFuU(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetNoPresentationEventReasonIfNoReasonExists$5(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$edyheXD-DrJsYj7p0TQbL8jTDl8(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetSuggestionPresentedTimestampMs$18(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gg_guMDPJ28Y9wU3Pra9VnC6aEU(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetWebviewRequestedCredential$2(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h3gdNo_UtJg1hlTa26VoCDrWeOo(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetAutofillServiceUid$24(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hD8eDAoQcLBIr2ZyMCkNELJtmMI(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$markShownCountAsResettable$8(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kIHRHQC8TM1lKJy55394IXZ40OE(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetFillResponseReceivedTimestampMs$16(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ldQo8dmHC3I582rLdV9deHgGM6o(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetLatencyAuthenticationUiDisplayMillis$28(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nDatkP8iwOpTt11W5UjuotO6tJA(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetSelectedDatasetId$19(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nq6URDhVBSOjg2oMU0G7O0GfLUM(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetFieldClassificationRequestId$37(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nx4FQfLnWsu2Ml78L_Eji7HBn2c(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetCountNotShownImePresentationNotDrawn$12(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qXVUB1ki1fTz2wCmZkcUTFrQhLk(Lcom/android/server/autofill/PresentationStatsEventLogger;Ljava/util/List;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeUpdateViewFillablesForRefillAttempt$39(Ljava/util/List;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qgI7eY-C9lPGuMp5qI9SY6pi0U8(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetAuthenticationType$26(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sAesPPTtVuvEoUw35fL4BJo4wXM(Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetAvailableCount$6(Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sdI_FQ7mzLhvsznHargrTR-Vw6E(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetFocusedId$42(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$so-onAoTnII28w7KKTEuVQ-0F1s(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetAvailablePccOnlyCount$31(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tAA_uyzxud3CEe7BPWnnb0q8MLQ(Lcom/android/server/autofill/PresentationStatsEventLogger;Ljava/util/List;ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetViewFillFailureCounts$41(Ljava/util/List;ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v0r_T4wLykXPwkFR_v62-Lt3eBk(Landroid/content/Context;ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetInlinePresentationAndSuggestionHostUid$23(Landroid/content/Context;ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vPAF-ACOIdaVsQzxa4mAbyecWvI(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeAddSuccessId$43(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vhApJrUYdaTUWbouhJ3fMJ3hObY(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetDisplayPresentationType$14(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zBi97M6-U185C6fDvk033jo3rIo(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetAvailablePccCount$30(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zrMQd83-VJaotFT8WfiC_-0nKzU(Lcom/android/server/autofill/PresentationStatsEventLogger;JLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetImeAnimationFinishMs$48(JLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method private constructor <init>(IIJ)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "callingAppUid"    # I
    .param p3, "timestamp"    # J

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    .line 277
    iput p2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mCallingAppUid:I

    .line 278
    iput-wide p3, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    .line 279
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 280
    return-void
.end method

.method private convertDatasetPickReason(I)I
    .locals 1
    .param p1, "val"    # I

    .line 772
    packed-switch p1, :pswitch_data_0

    .line 781
    const/4 v0, 0x0

    return v0

    .line 779
    :pswitch_0
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createPresentationLog(IIJ)Lcom/android/server/autofill/PresentationStatsEventLogger;
    .locals 1
    .param p0, "sessionId"    # I
    .param p1, "callingAppUid"    # I
    .param p2, "timestamp"    # J

    .line 287
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/autofill/PresentationStatsEventLogger;-><init>(IIJ)V

    return-object v0
.end method

.method private static getDatasetCountForAutofillId(Ljava/util/List;Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;
    .locals 5
    .param p1, "currentViewId"    # Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            ")",
            "Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;"
        }
    .end annotation

    .line 445
    .local p0, "datasetList":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;

    invoke-direct {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;-><init>()V

    .line 446
    .local v0, "container":Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;
    if-eqz p0, :cond_2

    .line 447
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 448
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/Dataset;

    .line 449
    .local v2, "data":Landroid/service/autofill/Dataset;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 450
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailableCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailableCount:I

    .line 452
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getEligibleReason()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 453
    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccOnlyCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccOnlyCount:I

    .line 454
    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccCount:I

    goto :goto_1

    .line 455
    :cond_0
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getEligibleReason()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 457
    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccCount:I

    .line 447
    .end local v2    # "data":Landroid/service/autofill/Dataset;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private static getDisplayPresentationType(I)I
    .locals 1
    .param p0, "uiType"    # I

    .line 1202
    packed-switch p0, :pswitch_data_0

    .line 1210
    const/4 v0, 0x0

    return v0

    .line 1208
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1206
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1204
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getElapsedTime()I
    .locals 4

    .line 767
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static getNoPresentationEventReason(I)I
    .locals 1
    .param p0, "commitReason"    # I

    .line 1187
    packed-switch p0, :pswitch_data_0

    .line 1197
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1193
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 1189
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 1191
    :pswitch_3
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic lambda$logWhenDatasetShown$10(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1
    .param p1, "datasets"    # I
    .param p2, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 436
    invoke-virtual {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetSuggestionPresentedTimestampMs()V

    .line 437
    iput p1, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 438
    const/4 v0, 0x1

    iput v0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 439
    return-void
.end method

.method private static synthetic lambda$markShownCountAsResettable$8(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1
    .param p0, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->shouldResetShownCount:Z

    .line 415
    return-void
.end method

.method private static synthetic lambda$maybeAddSuccessId$43(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 5
    .param p0, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 862
    iget-object v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillIdsAttemptedAutofill:Landroid/util/ArraySet;

    .line 863
    .local v0, "autofillIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    const-string v1, "PresentationStatsEventLogger"

    if-nez v0, :cond_0

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted autofill ids is null, but received autofillId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " successfully filled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    goto/16 :goto_1

    .line 867
    :cond_0
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 868
    iget-object v2, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFailedAutofillIds:Landroid/util/ArraySet;

    .line 869
    .local v2, "failedIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 870
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_1

    .line 871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logging autofill refill of id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_1
    iget v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledSuccessfullyOnRefillCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledSuccessfullyOnRefillCount:I

    .line 876
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 878
    :cond_2
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_3

    .line 879
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logging autofill for id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_3
    :goto_0
    iget v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    .line 884
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 885
    iget-object v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAlreadyFilledAutofillIds:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 886
    .end local v2    # "failedIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAlreadyFilledAutofillIds:Landroid/util/ArraySet;

    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Successfully filled autofillId:"

    if-eqz v2, :cond_5

    .line 887
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_6

    .line 888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already processed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 892
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not found in list of attempted autofill ids: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    .line 896
    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic lambda$maybeIncrementCountShown$7(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 393
    iget-boolean v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->shouldResetShownCount:Z

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->shouldResetShownCount:Z

    .line 395
    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 398
    :cond_0
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    if-nez v0, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetSuggestionPresentedTimestampMs()V

    .line 404
    :cond_1
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 405
    return-void
.end method

.method private static synthetic lambda$maybeSetAuthenticationResult$27(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "val"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 635
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationResult:I

    .line 636
    return-void
.end method

.method private static synthetic lambda$maybeSetAuthenticationType$26(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "val"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 626
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationType:I

    .line 627
    return-void
.end method

.method private static synthetic lambda$maybeSetAutofillServiceUid$24(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "uid"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 611
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillServiceUid:I

    .line 612
    return-void
.end method

.method private static synthetic lambda$maybeSetAvailableCount$6(Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2
    .param p0, "datasetList"    # Ljava/util/List;
    .param p1, "currentViewId"    # Landroid/view/autofill/AutofillId;
    .param p2, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 378
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getDatasetCountForAutofillId(Ljava/util/List;Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;

    move-result-object v0

    .line 379
    .local v0, "container":Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;
    iget v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailableCount:I

    iput v1, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    .line 380
    iget v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccCount:I

    iput v1, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccCount:I

    .line 381
    iget v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccOnlyCount:I

    iput v1, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccOnlyCount:I

    .line 382
    iget v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailableCount:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsDatasetAvailable:Z

    .line 383
    return-void
.end method

.method private static synthetic lambda$maybeSetAvailablePccCount$30(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "val"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 672
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccCount:I

    .line 673
    return-void
.end method

.method private static synthetic lambda$maybeSetAvailablePccOnlyCount$31(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "val"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 681
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccOnlyCount:I

    .line 682
    return-void
.end method

.method private static synthetic lambda$maybeSetCountFilteredUserTyping$11(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "countFilteredUserTyping"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 482
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountFilteredUserTyping:I

    .line 483
    return-void
.end method

.method private static synthetic lambda$maybeSetCountNotShownImePresentationNotDrawn$12(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "countNotShownImePresentationNotDrawn"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 489
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImePresentationNotDrawn:I

    .line 490
    return-void
.end method

.method private static synthetic lambda$maybeSetCountNotShownImeUserNotSeen$13(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "countNotShownImeUserNotSeen"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 495
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImeUserNotSeen:I

    .line 496
    return-void
.end method

.method private static synthetic lambda$maybeSetCountShown$9(Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2
    .param p0, "datasetList"    # Ljava/util/List;
    .param p1, "currentViewId"    # Landroid/view/autofill/AutofillId;
    .param p2, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 421
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getDatasetCountForAutofillId(Ljava/util/List;Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;

    move-result-object v0

    .line 422
    .local v0, "container":Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;
    iget v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailableCount:I

    iput v1, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 423
    iget v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailableCount:I

    if-lez v1, :cond_0

    .line 424
    const/4 v1, 0x1

    iput v1, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 426
    :cond_0
    return-void
.end method

.method private static synthetic lambda$maybeSetDetectionPreference$33(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "detectionPreference"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 699
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDetectionPreference:I

    .line 700
    return-void
.end method

.method private static synthetic lambda$maybeSetDialogDismissed$20(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "dialogDismissed"    # Z
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 567
    iput-boolean p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDialogDismissed:Z

    .line 568
    return-void
.end method

.method private static synthetic lambda$maybeSetDisplayPresentationType$14(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1
    .param p0, "uiType"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 503
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    if-nez v0, :cond_0

    .line 505
    invoke-static {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getDisplayPresentationType(I)I

    move-result v0

    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    .line 507
    :cond_0
    return-void
.end method

.method private static synthetic lambda$maybeSetFieldClassificationRequestId$37(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "requestId"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 789
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldClassificationRequestId:I

    .line 790
    return-void
.end method

.method private static synthetic lambda$maybeSetFillDialogNotShownReason$46(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2
    .param p0, "reason"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 922
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogNotShownReason:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogNotShownReason:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 927
    const/4 v0, 0x7

    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogNotShownReason:I

    goto :goto_0

    .line 929
    :cond_1
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogNotShownReason:I

    .line 931
    :goto_0
    return-void
.end method

.method private synthetic lambda$maybeSetFillDialogReadyToShowMs$47(JLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2
    .param p1, "val"    # J
    .param p3, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 940
    iget-wide v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogReadyToShowMs:I

    .line 941
    return-void
.end method

.method private static synthetic lambda$maybeSetFillRequestSentTimestampMs$15(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "timestamp"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 512
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillRequestSentTimestampMs:I

    .line 513
    return-void
.end method

.method private static synthetic lambda$maybeSetFillResponseReceivedTimestampMs$16(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "timestamp"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 522
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillResponseReceivedTimestampMs:I

    .line 523
    return-void
.end method

.method private static synthetic lambda$maybeSetFilteredFillableViewsCount$40(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "filteredViewsCount"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 822
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFilteredFillabaleViewCount:I

    .line 823
    return-void
.end method

.method private static synthetic lambda$maybeSetFocusedId$42(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1
    .param p0, "id"    # Landroid/view/autofill/AutofillId;
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 848
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v0

    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    .line 849
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    nop

    .line 851
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedVirtualAutofillId:I

    .line 853
    :cond_0
    return-void
.end method

.method private synthetic lambda$maybeSetImeAnimationFinishMs$48(JLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2
    .param p1, "val"    # J
    .param p3, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 950
    iget-wide v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mImeAnimationFinishMs:I

    .line 951
    return-void
.end method

.method private static synthetic lambda$maybeSetInlinePresentationAndSuggestionHostUid$23(Landroid/content/Context;ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 585
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "imeString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "No default IME found"

    const-string v3, "PresentationStatsEventLogger"

    if-eqz v1, :cond_0

    .line 588
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-void

    .line 591
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 592
    .local v1, "imeComponent":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 593
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return-void

    .line 597
    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 600
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v5

    .line 599
    invoke-virtual {v4, v2, v5, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .local v3, "imeUid":I
    nop

    .line 605
    iput v3, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mInlineSuggestionHostUid:I

    .line 606
    return-void

    .line 601
    .end local v3    # "imeUid":I
    :catch_0
    move-exception v4

    .line 602
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void
.end method

.method private static synthetic lambda$maybeSetIsCredentialRequest$1(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "isCredentialRequest"    # Z
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 317
    iput-boolean p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsCredentialRequest:Z

    return-void
.end method

.method private static synthetic lambda$maybeSetIsNewRequest$25(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "isRequestTriggered"    # Z
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 617
    iput-boolean p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsRequestTriggered:Z

    .line 618
    return-void
.end method

.method private static synthetic lambda$maybeSetLatencyAuthenticationUiDisplayMillis$28(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "val"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 644
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mLatencyAuthenticationUiDisplayMillis:I

    .line 645
    return-void
.end method

.method private static synthetic lambda$maybeSetLatencyDatasetDisplayMillis$29(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "val"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 658
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mLatencyDatasetDisplayMillis:I

    .line 659
    return-void
.end method

.method private static synthetic lambda$maybeSetNegativeCtaButtonClicked$21(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "negativeCtaButtonClicked"    # Z
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 573
    iput-boolean p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNegativeCtaButtonClicked:Z

    .line 574
    return-void
.end method

.method private static synthetic lambda$maybeSetNoPresentationEventReason$3(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1
    .param p0, "reason"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 330
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    if-nez v0, :cond_0

    .line 331
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 333
    :cond_0
    return-void
.end method

.method private static synthetic lambda$maybeSetNoPresentationEventReasonIfNoReasonExists$5(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2
    .param p0, "reason"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 358
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    if-eqz v0, :cond_0

    .line 359
    return-void

    .line 365
    :cond_0
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    :cond_1
    goto :goto_0

    .line 371
    :cond_2
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 372
    return-void

    .line 367
    :goto_0
    const-string v0, "PresentationStatsEventLogger"

    const-string v1, "Not setting no presentation reason because it already exists"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method private synthetic lambda$maybeSetNoPresentationEventReasonSuggestionsFiltered$4(Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;
    .param p2, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 343
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 349
    .local v0, "length":I
    if-lez v0, :cond_2

    .line 350
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 352
    :cond_2
    return-void

    .line 344
    .end local v0    # "length":I
    :goto_0
    return-void
.end method

.method private static synthetic lambda$maybeSetNotifyNotExpiringResponseDuringAuth$44(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1
    .param p0, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 904
    iget v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFixExpireResponseDuringAuthCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFixExpireResponseDuringAuthCount:I

    .line 905
    return-void
.end method

.method private static synthetic lambda$maybeSetPositiveCtaButtonClicked$22(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "positiveCtaButtonClicked"    # Z
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 579
    iput-boolean p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mPositiveCtaButtonClicked:Z

    .line 580
    return-void
.end method

.method private static synthetic lambda$maybeSetRequestId$0(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "requestId"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 310
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

    return-void
.end method

.method private static synthetic lambda$maybeSetSelectedDatasetId$19(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "selectedDatasetId"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 560
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetId:I

    .line 561
    return-void
.end method

.method private synthetic lambda$maybeSetSelectedDatasetPickReason$32(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1
    .param p1, "val"    # I
    .param p2, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 690
    invoke-direct {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->convertDatasetPickReason(I)I

    move-result v0

    iput v0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetPickedReason:I

    .line 691
    return-void
.end method

.method private static synthetic lambda$maybeSetSuggestionPresentedTimestampMs$18(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2
    .param p0, "timestamp"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 546
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 547
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    .line 550
    :cond_0
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedLastTimestampMs:I

    .line 551
    return-void
.end method

.method private static synthetic lambda$maybeSetSuggestionSentTimestampMs$17(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2
    .param p0, "timestamp"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 533
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionSentTimestampMs:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 534
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionSentTimestampMs:I

    .line 536
    :cond_0
    return-void
.end method

.method private synthetic lambda$maybeSetViewFillFailureCounts$41(Ljava/util/List;ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2
    .param p1, "ids"    # Ljava/util/List;
    .param p2, "isRefill"    # Z
    .param p3, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 832
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 833
    .local v0, "failureCount":I
    if-eqz p2, :cond_0

    .line 834
    iput v0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFailedOnRefillCount:I

    .line 835
    invoke-direct {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->setHasRelayoutLog()V

    goto :goto_0

    .line 837
    :cond_0
    iput v0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillFailureCount:I

    .line 838
    iput v0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFailedPriorToRefillCount:I

    .line 839
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFailedAutofillIds:Landroid/util/ArraySet;

    .line 841
    :goto_0
    return-void
.end method

.method private static synthetic lambda$maybeSetViewFillablesAndCount$38(Ljava/util/List;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1
    .param p0, "autofillIds"    # Ljava/util/List;
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 798
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillIdsAttemptedAutofill:Landroid/util/ArraySet;

    .line 799
    iget-object v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillIdsAttemptedAutofill:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillableTotalCount:I

    .line 800
    return-void
.end method

.method private static synthetic lambda$maybeSetWebviewRequestedCredential$2(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0
    .param p0, "webviewRequestedCredential"    # Z
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 325
    iput-boolean p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mWebviewRequestedCredential:Z

    return-void
.end method

.method private synthetic lambda$maybeUpdateViewFillablesForRefillAttempt$39(Ljava/util/List;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1
    .param p1, "autofillIds"    # Ljava/util/List;
    .param p2, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 809
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillIdsAttemptedAutofill:Landroid/util/ArraySet;

    .line 812
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFailedAutofillIds:Landroid/util/ArraySet;

    .line 813
    invoke-direct {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->setHasRelayoutLog()V

    .line 814
    return-void
.end method

.method private static synthetic lambda$notifyViewEnteredIgnoredDuringAuthCount$45(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1
    .param p0, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 912
    iget v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNotifyViewEnteredIgnoredDuringAuthCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNotifyViewEnteredIgnoredDuringAuthCount:I

    .line 913
    return-void
.end method

.method private synthetic lambda$onFieldTextUpdated$35(Lcom/android/server/autofill/ViewState;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 3
    .param p1, "state"    # Lcom/android/server/autofill/ViewState;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 730
    invoke-direct {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getElapsedTime()I

    move-result v0

    .line 732
    .local v0, "timestamp":I
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v1

    iget v2, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    .line 740
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->updateTextFieldLength(Landroid/view/autofill/AutofillValue;)V

    .line 743
    invoke-virtual {p1}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 744
    iput v0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofilledTimestampMs:I

    .line 745
    return-void

    .line 750
    :cond_2
    iget v1, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 751
    iput v0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    .line 753
    :cond_3
    iput v0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedLastTimestampMs:I

    .line 754
    return-void

    .line 734
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad view state for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresentationStatsEventLogger"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void
.end method

.method private static synthetic lambda$setHasRelayoutLog$49(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1
    .param p0, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mHasRelayoutLog:Z

    .line 963
    return-void
.end method

.method private synthetic lambda$setPresentationSelectedTimestamp$36(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 759
    invoke-direct {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getElapsedTime()I

    move-result v0

    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectionTimestamp:I

    .line 760
    return-void
.end method

.method private static synthetic lambda$updateTextFieldLength$34(Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 3
    .param p0, "value"    # Landroid/view/autofill/AutofillValue;
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 709
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 713
    :cond_1
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 715
    .local v0, "length":I
    iget v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 716
    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    .line 718
    :cond_2
    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldLastLength:I

    .line 719
    return-void

    .line 710
    .end local v0    # "length":I
    :goto_0
    return-void
.end method

.method private setHasRelayoutLog()V
    .locals 2

    .line 961
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda49;

    invoke-direct {v1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda49;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 964
    return-void
.end method


# virtual methods
.method getInternalEvent()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    return-object v0
.end method

.method public logAndEndEvent(Ljava/lang/String;)V
    .locals 71
    .param p1, "caller"    # Ljava/lang/String;

    .line 970
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const-string v2, "PresentationStatsEventLogger"

    if-nez v1, :cond_0

    .line 971
    const-string v1, "Shouldn\'t be logging AutofillPresentationEventReported again for same event"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-void

    .line 976
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 977
    .local v1, "event":Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;
    iget-boolean v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsDatasetAvailable:Z

    if-nez v3, :cond_1

    iget-boolean v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mHasRelayoutLog:Z

    if-nez v3, :cond_1

    iget v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFixExpireResponseDuringAuthCount:I

    if-gtz v3, :cond_1

    iget v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNotifyViewEnteredIgnoredDuringAuthCount:I

    if-gtz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 981
    .local v3, "ignoreLogging":Z
    :goto_0
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_3

    .line 982
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    if-eqz v3, :cond_2

    const-string v6, "IGNORING - following event won\'t be logged: "

    goto :goto_1

    :cond_2
    const-string v6, ""

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Log AutofillPresentationEventReported: requestId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " sessionId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mNoPresentationEventReason="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mAvailableCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mCountShown="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mCountFilteredUserTyping="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountFilteredUserTyping:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mCountNotShownImePresentationNotDrawn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImePresentationNotDrawn:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mCountNotShownImeUserNotSeen="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImeUserNotSeen:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mDisplayPresentationType="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mAutofillServiceUid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillServiceUid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mInlineSuggestionHostUid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mInlineSuggestionHostUid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mIsRequestTriggered="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsRequestTriggered:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mFillRequestSentTimestampMs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillRequestSentTimestampMs:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mFillResponseReceivedTimestampMs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillResponseReceivedTimestampMs:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mSuggestionSentTimestampMs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionSentTimestampMs:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mSuggestionPresentedTimestampMs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mSelectedDatasetId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mDialogDismissed="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDialogDismissed:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mNegativeCtaButtonClicked="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNegativeCtaButtonClicked:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mPositiveCtaButtonClicked="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mPositiveCtaButtonClicked:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mAuthenticationType="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mAuthenticationResult="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationResult:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mLatencyAuthenticationUiDisplayMillis="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mLatencyAuthenticationUiDisplayMillis:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mLatencyDatasetDisplayMillis="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mLatencyDatasetDisplayMillis:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mAvailablePccCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mAvailablePccOnlyCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccOnlyCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mSelectedDatasetPickedReason="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetPickedReason:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mDetectionPreference="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDetectionPreference:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mFieldClassificationRequestId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldClassificationRequestId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mAppPackageUid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mCallingAppUid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mIsCredentialRequest="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsCredentialRequest:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mWebviewRequestedCredential="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mWebviewRequestedCredential:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mFilteredFillabaleViewCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFilteredFillabaleViewCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mViewFillableTotalCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillableTotalCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mViewFillFailureCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillFailureCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mFocusedId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mViewFillSuccessCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mViewFilledButUnexpectedCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " event.mSelectionTimestamp="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectionTimestamp:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " event.mAutofilledTimestampMs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofilledTimestampMs:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " event.mFieldModifiedFirstTimestampMs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " event.mFieldModifiedLastTimestampMs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedLastTimestampMs:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " event.mSuggestionPresentedLastTimestampMs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedLastTimestampMs:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " event.mFocusedVirtualAutofillId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedVirtualAutofillId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " event.mFieldFirstLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " event.mFieldLastLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldLastLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " event.mViewFailedPriorToRefillCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFailedPriorToRefillCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " event.mViewFilledSuccessfullyOnRefillCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledSuccessfullyOnRefillCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " event.mViewFailedOnRefillCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFailedOnRefillCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " event.notExpiringResponseDuringAuthCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFixExpireResponseDuringAuthCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " event.notifyViewEnteredIgnoredDuringAuthCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNotifyViewEnteredIgnoredDuringAuthCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " event.fillDialogNotShownReason="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogNotShownReason:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " event.fillDialogReadyToShowMs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogReadyToShowMs:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " event.imeAnimationFinishMs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mImeAnimationFinishMs:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 982
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 981
    :cond_3
    move-object/from16 v5, p1

    .line 1052
    :goto_2
    if-eqz v3, :cond_4

    .line 1053
    const-string v4, "Empty dataset. Autofill ignoring log"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 1055
    return-void

    .line 1057
    :cond_4
    iget v7, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

    iget v8, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    iget v9, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    iget v10, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    iget v11, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    iget v12, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountFilteredUserTyping:I

    iget v13, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImePresentationNotDrawn:I

    iget v14, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImeUserNotSeen:I

    iget v15, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillServiceUid:I

    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mInlineSuggestionHostUid:I

    iget-boolean v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsRequestTriggered:Z

    move/from16 v16, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillRequestSentTimestampMs:I

    move/from16 v19, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillResponseReceivedTimestampMs:I

    move/from16 v20, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionSentTimestampMs:I

    move/from16 v21, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    move/from16 v22, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetId:I

    move/from16 v23, v2

    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDialogDismissed:Z

    move/from16 v24, v2

    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNegativeCtaButtonClicked:Z

    move/from16 v25, v2

    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mPositiveCtaButtonClicked:Z

    move/from16 v26, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationType:I

    move/from16 v27, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationResult:I

    move/from16 v28, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mLatencyAuthenticationUiDisplayMillis:I

    move/from16 v70, v3

    .end local v3    # "ignoreLogging":Z
    .local v70, "ignoreLogging":Z
    int-to-long v2, v2

    move-wide/from16 v29, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mLatencyDatasetDisplayMillis:I

    int-to-long v2, v2

    move-wide/from16 v31, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccCount:I

    iget v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccOnlyCount:I

    move/from16 v33, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetPickedReason:I

    move/from16 v35, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDetectionPreference:I

    move/from16 v36, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldClassificationRequestId:I

    move/from16 v37, v2

    iget v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mCallingAppUid:I

    move/from16 v38, v2

    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsCredentialRequest:Z

    move/from16 v39, v2

    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mWebviewRequestedCredential:Z

    move/from16 v40, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillableTotalCount:I

    move/from16 v34, v3

    int-to-long v2, v2

    move-wide/from16 v41, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillFailureCount:I

    int-to-long v2, v2

    move-wide/from16 v43, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    iget v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    move/from16 v45, v2

    int-to-long v2, v3

    move-wide/from16 v46, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    int-to-long v2, v2

    move-wide/from16 v48, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectionTimestamp:I

    iget v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofilledTimestampMs:I

    move/from16 v50, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    move/from16 v52, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedLastTimestampMs:I

    move/from16 v53, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedLastTimestampMs:I

    move/from16 v54, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedVirtualAutofillId:I

    move/from16 v55, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    move/from16 v56, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldLastLength:I

    move/from16 v57, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFilteredFillabaleViewCount:I

    move/from16 v51, v3

    int-to-long v2, v2

    move-wide/from16 v58, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFailedPriorToRefillCount:I

    iget v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledSuccessfullyOnRefillCount:I

    move/from16 v60, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFailedOnRefillCount:I

    move/from16 v62, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFixExpireResponseDuringAuthCount:I

    move/from16 v63, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNotifyViewEnteredIgnoredDuringAuthCount:I

    move/from16 v64, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogNotShownReason:I

    move/from16 v65, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogReadyToShowMs:I

    move/from16 v61, v3

    int-to-long v2, v2

    move-wide/from16 v66, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mImeAnimationFinishMs:I

    int-to-long v2, v2

    move/from16 v18, v6

    const/16 v6, 0x1d5

    move-wide/from16 v68, v2

    move/from16 v17, v4

    invoke-static/range {v6 .. v69}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIIIIIZIIIIIZZZIIJJIIIIIIZZJJIJJIIIIIIIIJIIIIIIJJ)V

    .line 1113
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 1114
    return-void
.end method

.method public logWhenDatasetShown(I)V
    .locals 2
    .param p1, "datasets"    # I

    .line 434
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 440
    return-void
.end method

.method public markShownCountAsResettable()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda45;

    invoke-direct {v1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda45;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 416
    return-void
.end method

.method public declared-synchronized maybeAddSuccessId(Landroid/view/autofill/AutofillId;)V
    .locals 2
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    monitor-enter p0

    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda42;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda42;-><init>(Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    monitor-exit p0

    return-void

    .line 860
    .end local p0    # "this":Lcom/android/server/autofill/PresentationStatsEventLogger;
    .end local p1    # "autofillId":Landroid/view/autofill/AutofillId;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public maybeIncrementCountShown()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 406
    return-void
.end method

.method public maybeSetAuthenticationResult(I)V
    .locals 2
    .param p1, "val"    # I

    .line 634
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda43;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda43;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 637
    return-void
.end method

.method public maybeSetAuthenticationType(I)V
    .locals 2
    .param p1, "val"    # I

    .line 625
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda20;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 628
    return-void
.end method

.method public maybeSetAutofillServiceUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 610
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda31;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda31;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 613
    return-void
.end method

.method public maybeSetAvailableCount(Ljava/util/List;Landroid/view/autofill/AutofillId;)V
    .locals 2
    .param p2, "currentViewId"    # Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            ")V"
        }
    .end annotation

    .line 377
    .local p1, "datasetList":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda22;-><init>(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 384
    return-void
.end method

.method public maybeSetAvailablePccCount(I)V
    .locals 2
    .param p1, "val"    # I

    .line 671
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda13;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 674
    return-void
.end method

.method public maybeSetAvailablePccOnlyCount(I)V
    .locals 2
    .param p1, "val"    # I

    .line 680
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda48;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda48;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 683
    return-void
.end method

.method public maybeSetCountFilteredUserTyping(I)V
    .locals 2
    .param p1, "countFilteredUserTyping"    # I

    .line 481
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda17;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 484
    return-void
.end method

.method public maybeSetCountNotShownImePresentationNotDrawn(I)V
    .locals 2
    .param p1, "countNotShownImePresentationNotDrawn"    # I

    .line 488
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda25;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 491
    return-void
.end method

.method public maybeSetCountNotShownImeUserNotSeen(I)V
    .locals 2
    .param p1, "countNotShownImeUserNotSeen"    # I

    .line 494
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda28;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda28;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 497
    return-void
.end method

.method public maybeSetCountShown(Ljava/util/List;Landroid/view/autofill/AutofillId;)V
    .locals 2
    .param p2, "currentViewId"    # Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            ")V"
        }
    .end annotation

    .line 420
    .local p1, "datasetList":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 427
    return-void
.end method

.method public maybeSetDetectionPreference(I)V
    .locals 2
    .param p1, "detectionPreference"    # I

    .line 698
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 701
    return-void
.end method

.method public maybeSetDialogDismissed(Z)V
    .locals 2
    .param p1, "dialogDismissed"    # Z

    .line 566
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda32;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda32;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 569
    return-void
.end method

.method public maybeSetDisplayPresentationType(I)V
    .locals 2
    .param p1, "uiType"    # I

    .line 500
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda18;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 508
    return-void
.end method

.method public maybeSetFieldClassificationRequestId(I)V
    .locals 2
    .param p1, "requestId"    # I

    .line 788
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 791
    return-void
.end method

.method public maybeSetFillDialogNotShownReason(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 921
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda41;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda41;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 932
    return-void
.end method

.method public maybeSetFillDialogReadyToShowMs(J)V
    .locals 2
    .param p1, "val"    # J

    .line 939
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;J)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 942
    return-void
.end method

.method public maybeSetFillRequestSentTimestampMs()V
    .locals 1

    .line 517
    invoke-direct {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getElapsedTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillRequestSentTimestampMs(I)V

    .line 518
    return-void
.end method

.method public maybeSetFillRequestSentTimestampMs(I)V
    .locals 2
    .param p1, "timestamp"    # I

    .line 511
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda19;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 514
    return-void
.end method

.method public maybeSetFillResponseReceivedTimestampMs()V
    .locals 1

    .line 527
    invoke-direct {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getElapsedTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillResponseReceivedTimestampMs(I)V

    .line 528
    return-void
.end method

.method public maybeSetFillResponseReceivedTimestampMs(I)V
    .locals 2
    .param p1, "timestamp"    # I

    .line 521
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda21;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 524
    return-void
.end method

.method public maybeSetFilteredFillableViewsCount(I)V
    .locals 2
    .param p1, "filteredViewsCount"    # I

    .line 821
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda24;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda24;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 824
    return-void
.end method

.method public maybeSetFocusedId(Landroid/view/autofill/AutofillId;)V
    .locals 2
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 846
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda6;-><init>(Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 854
    return-void
.end method

.method public maybeSetImeAnimationFinishMs(J)V
    .locals 2
    .param p1, "val"    # J

    .line 949
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;J)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 952
    return-void
.end method

.method public maybeSetInlinePresentationAndSuggestionHostUid(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 584
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 607
    return-void
.end method

.method public maybeSetIsCredentialRequest(Z)V
    .locals 2
    .param p1, "isCredentialRequest"    # Z

    .line 317
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda34;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda34;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 318
    return-void
.end method

.method public maybeSetIsNewRequest(Z)V
    .locals 2
    .param p1, "isRequestTriggered"    # Z

    .line 616
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda23;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda23;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 619
    return-void
.end method

.method public maybeSetLatencyAuthenticationUiDisplayMillis()V
    .locals 1

    .line 650
    invoke-direct {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getElapsedTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetLatencyAuthenticationUiDisplayMillis(I)V

    .line 651
    return-void
.end method

.method public maybeSetLatencyAuthenticationUiDisplayMillis(I)V
    .locals 2
    .param p1, "val"    # I

    .line 643
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda36;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda36;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 646
    return-void
.end method

.method public maybeSetLatencyDatasetDisplayMillis()V
    .locals 1

    .line 664
    invoke-direct {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getElapsedTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetLatencyDatasetDisplayMillis(I)V

    .line 665
    return-void
.end method

.method public maybeSetLatencyDatasetDisplayMillis(I)V
    .locals 2
    .param p1, "val"    # I

    .line 657
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda29;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda29;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 660
    return-void
.end method

.method public maybeSetNegativeCtaButtonClicked(Z)V
    .locals 2
    .param p1, "negativeCtaButtonClicked"    # Z

    .line 572
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda8;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 575
    return-void
.end method

.method public maybeSetNoPresentationEventReason(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 329
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 334
    return-void
.end method

.method public maybeSetNoPresentationEventReasonIfNoReasonExists(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 356
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda33;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda33;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 373
    return-void
.end method

.method public maybeSetNoPresentationEventReasonSuggestionsFiltered(Landroid/view/autofill/AutofillValue;)V
    .locals 2
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 341
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/view/autofill/AutofillValue;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 353
    return-void
.end method

.method public maybeSetNotifyNotExpiringResponseDuringAuth()V
    .locals 2

    .line 903
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda38;

    invoke-direct {v1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda38;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 906
    return-void
.end method

.method public maybeSetPositiveCtaButtonClicked(Z)V
    .locals 2
    .param p1, "positiveCtaButtonClicked"    # Z

    .line 578
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda39;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda39;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 581
    return-void
.end method

.method public maybeSetRequestId(I)V
    .locals 2
    .param p1, "requestId"    # I

    .line 310
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda47;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda47;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 311
    return-void
.end method

.method public maybeSetSelectedDatasetId(I)V
    .locals 2
    .param p1, "selectedDatasetId"    # I

    .line 559
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda44;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda44;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 562
    invoke-virtual {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->setPresentationSelectedTimestamp()V

    .line 563
    return-void
.end method

.method public maybeSetSelectedDatasetPickReason(I)V
    .locals 2
    .param p1, "val"    # I

    .line 689
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 692
    return-void
.end method

.method public maybeSetSuggestionPresentedTimestampMs()V
    .locals 1

    .line 555
    invoke-direct {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getElapsedTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetSuggestionPresentedTimestampMs(I)V

    .line 556
    return-void
.end method

.method public maybeSetSuggestionPresentedTimestampMs(I)V
    .locals 2
    .param p1, "timestamp"    # I

    .line 544
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda26;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda26;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 552
    return-void
.end method

.method public maybeSetSuggestionSentTimestampMs()V
    .locals 1

    .line 540
    invoke-direct {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getElapsedTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetSuggestionSentTimestampMs(I)V

    .line 541
    return-void
.end method

.method public maybeSetSuggestionSentTimestampMs(I)V
    .locals 2
    .param p1, "timestamp"    # I

    .line 531
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 537
    return-void
.end method

.method public maybeSetViewFillFailureCounts(Ljava/util/List;Z)V
    .locals 2
    .param p2, "isRefill"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;Z)V"
        }
    .end annotation

    .line 831
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 842
    return-void
.end method

.method public maybeSetViewFillablesAndCount(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 797
    .local p1, "autofillIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda46;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda46;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 801
    return-void
.end method

.method public maybeSetWebviewRequestedCredential(Z)V
    .locals 2
    .param p1, "webviewRequestedCredential"    # Z

    .line 324
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 326
    return-void
.end method

.method public maybeUpdateViewFillablesForRefillAttempt(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 807
    .local p1, "autofillIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 815
    return-void
.end method

.method public notifyViewEnteredIgnoredDuringAuthCount()V
    .locals 2

    .line 911
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda30;

    invoke-direct {v1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda30;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 914
    return-void
.end method

.method public onFieldTextUpdated(Lcom/android/server/autofill/ViewState;Landroid/view/autofill/AutofillValue;)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/autofill/ViewState;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;

    .line 729
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;Lcom/android/server/autofill/ViewState;Landroid/view/autofill/AutofillValue;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 755
    return-void
.end method

.method public setPresentationSelectedTimestamp()V
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 761
    return-void
.end method

.method public startNewEvent()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "PresentationStatsEventLogger"

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "Failed to start new event because already have active event."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 295
    :cond_0
    const-string v0, "Started new PresentationStatsEvent"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    invoke-direct {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;-><init>()V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 297
    return-void
.end method

.method public updateTextFieldLength(Landroid/view/autofill/AutofillValue;)V
    .locals 2
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 708
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda2;-><init>(Landroid/view/autofill/AutofillValue;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 720
    return-void
.end method
