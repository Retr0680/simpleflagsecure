.class Lcom/android/server/policy/VoiceAccessShortcutController;
.super Ljava/lang/Object;
.source "VoiceAccessShortcutController.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VOICE_ACCESS_LABEL:Ljava/lang/String; = "Voice Access"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/android/server/policy/VoiceAccessShortcutController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/VoiceAccessShortcutController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/policy/VoiceAccessShortcutController;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method toggleVoiceAccess(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 47
    iget-object v0, p0, Lcom/android/server/policy/VoiceAccessShortcutController;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {v0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v0

    .line 49
    .local v0, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/policy/VoiceAccessShortcutController;->mContext:Landroid/content/Context;

    .line 50
    const-string v2, "Voice Access"

    invoke-static {v1, v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getInstalledAccessibilityServiceComponentNameByLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 52
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 53
    sget-object v2, Lcom/android/server/policy/VoiceAccessShortcutController;->TAG:Ljava/lang/String;

    const-string v3, "Toggle Voice Access failed due to componentName being null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v2, 0x0

    return v2

    .line 57
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 58
    .local v2, "newState":Z
    iget-object v3, p0, Lcom/android/server/policy/VoiceAccessShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    .line 60
    return v2
.end method
