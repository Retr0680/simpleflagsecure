.class Lcom/android/server/am/AppRestrictionController$BgHandler;
.super Landroid/os/Handler;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BgHandler"
.end annotation


# static fields
.field static final MSG_APP_RESTRICTION_LEVEL_CHANGED:I = 0x1

.field static final MSG_APP_STANDBY_BUCKET_CHANGED:I = 0x2

.field static final MSG_BACKGROUND_RESTRICTION_CHANGED:I = 0x0

.field static final MSG_CANCEL_REQUEST_BG_RESTRICTED:I = 0x9

.field static final MSG_LOAD_RESTRICTION_SETTINGS:I = 0xa

.field static final MSG_PERSIST_RESTRICTION_SETTINGS:I = 0xb

.field static final MSG_REQUEST_BG_RESTRICTED:I = 0x4

.field static final MSG_UID_ACTIVE:I = 0x6

.field static final MSG_UID_GONE:I = 0x7

.field static final MSG_UID_IDLE:I = 0x5

.field static final MSG_UID_PROC_STATE_CHANGED:I = 0x8

.field static final MSG_USER_INTERACTION_STARTED:I = 0x3


# instance fields
.field private final mInjector:Lcom/android/server/am/AppRestrictionController$Injector;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/am/AppRestrictionController$Injector;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "injector"    # Lcom/android/server/am/AppRestrictionController$Injector;

    .line 3178
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3179
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$BgHandler;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 3180
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 3184
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$BgHandler;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 3185
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppRestrictionController()Lcom/android/server/am/AppRestrictionController;

    move-result-object v0

    .line 3186
    .local v0, "c":Lcom/android/server/am/AppRestrictionController;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 3223
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->persistToXml(I)V

    goto/16 :goto_0

    .line 3220
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->loadFromXml(Z)V

    .line 3221
    goto/16 :goto_0

    .line 3209
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->handleCancelRequestBgRestricted(Ljava/lang/String;I)V

    .line 3210
    goto/16 :goto_0

    .line 3212
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->handleUidProcStateChanged(II)V

    .line 3213
    goto :goto_0

    .line 3216
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->handleUidInactive(IZ)V

    .line 3217
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppRestrictionController;->handleUidGone(I)V

    .line 3218
    goto :goto_0

    .line 3206
    :pswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppRestrictionController;->handleUidActive(I)V

    .line 3207
    goto :goto_0

    .line 3203
    :pswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->handleUidInactive(IZ)V

    .line 3204
    goto :goto_0

    .line 3200
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->handleRequestBgRestricted(Ljava/lang/String;I)V

    .line 3201
    goto :goto_0

    .line 3197
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserInteractionStarted(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;I)V

    .line 3198
    goto :goto_0

    .line 3194
    :pswitch_9
    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mhandleAppStandbyBucketChanged(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;I)V

    .line 3195
    goto :goto_0

    .line 3191
    :pswitch_a
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mdispatchAppRestrictionLevelChanges(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;I)V

    .line 3192
    goto :goto_0

    .line 3188
    :pswitch_b
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v3, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v0, v1, v4, v2}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mhandleBackgroundRestrictionChanged(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;Z)V

    .line 3189
    nop

    .line 3226
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
