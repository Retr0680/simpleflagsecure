.class Lcom/android/server/policy/TalkbackShortcutController;
.super Ljava/lang/Object;
.source "TalkbackShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;
    }
.end annotation


# static fields
.field private static final TALKBACK_LABEL:Ljava/lang/String; = "TalkBack"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private logStemTriplePressAccessibilityTelemetry(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 94
    iget-object v0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wear_accessibility_gesture_enabled_during_oobe"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    const/4 v2, 0x7

    invoke-static {v0, p1, v2, v1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 103
    return-void
.end method


# virtual methods
.method isTalkBackShortcutGestureEnabled()Z
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "wear_accessibility_gesture_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v3, v1

    :cond_0
    return v3
.end method

.method toggleTalkback(ILcom/android/server/policy/TalkbackShortcutController$ShortcutSource;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "source"    # Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    .line 57
    iget-object v0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {v0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v0

    .line 59
    .local v0, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 60
    const-string v2, "TalkBack"

    invoke-static {v1, v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getInstalledAccessibilityServiceComponentNameByLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 63
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 64
    const/4 v2, 0x0

    return v2

    .line 67
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 69
    .local v2, "isTalkbackAlreadyEnabled":Z
    sget-object v3, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->KEYBOARD:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    if-eq p2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    :cond_1
    xor-int/lit8 v3, v2, 0x1

    move v2, v3

    .line 71
    iget-object v3, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    .line 75
    sget-object v3, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->GESTURE:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    if-ne p2, v3, :cond_2

    if-eqz v2, :cond_2

    .line 76
    invoke-direct {p0, v1}, Lcom/android/server/policy/TalkbackShortcutController;->logStemTriplePressAccessibilityTelemetry(Landroid/content/ComponentName;)V

    .line 79
    :cond_2
    return v2
.end method
