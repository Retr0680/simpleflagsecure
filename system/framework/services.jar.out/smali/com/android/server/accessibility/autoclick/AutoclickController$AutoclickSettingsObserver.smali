.class final Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AutoclickController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/autoclick/AutoclickController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AutoclickSettingsObserver"
.end annotation


# instance fields
.field private final mAutoclickCursorAreaSizeSettingUri:Landroid/net/Uri;

.field private final mAutoclickDelaySettingUri:Landroid/net/Uri;

.field private final mAutoclickIgnoreMinorCursorMovementSettingUri:Landroid/net/Uri;

.field private mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

.field private final mAutoclickRevertToLeftClickSettingUri:Landroid/net/Uri;

.field private mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    .line 420
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 398
    const-string v0, "accessibility_autoclick_delay"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    .line 402
    nop

    .line 403
    const-string v0, "accessibility_autoclick_cursor_area_size"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickCursorAreaSizeSettingUri:Landroid/net/Uri;

    .line 406
    nop

    .line 407
    const-string v0, "accessibility_autoclick_ignore_minor_cursor_movement"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickIgnoreMinorCursorMovementSettingUri:Landroid/net/Uri;

    .line 410
    nop

    .line 411
    const-string v0, "accessibility_autoclick_revert_to_left_click"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickRevertToLeftClickSettingUri:Landroid/net/Uri;

    .line 421
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    .line 422
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 504
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    .line 506
    const-string v2, "accessibility_autoclick_delay"

    const/16 v3, 0x258

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 511
    .local v0, "delay":I
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->updateDelay(I)V

    .line 514
    .end local v0    # "delay":I
    :cond_0
    nop

    .line 556
    return-void
.end method

.method public start(Landroid/content/ContentResolver;Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;)V
    .locals 4
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "clickScheduler"    # Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;
    .param p3, "autoclickIndicatorScheduler"    # Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    .line 439
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-nez v0, :cond_2

    .line 442
    if-eqz p1, :cond_1

    .line 445
    if-eqz p2, :cond_0

    .line 449
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 450
    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    .line 451
    iput-object p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    .line 452
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 459
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 461
    nop

    .line 486
    return-void

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "clickScheduler not set."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contentResolver not set."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Observer already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 500
    return-void

    .line 496
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AutoclickSettingsObserver not started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
