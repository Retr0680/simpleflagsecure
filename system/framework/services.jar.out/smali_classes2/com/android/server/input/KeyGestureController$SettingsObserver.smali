.class Lcom/android/server/input/KeyGestureController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "KeyGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/KeyGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method static bridge synthetic -$$Nest$mobserve(Lcom/android/server/input/KeyGestureController$SettingsObserver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/input/KeyGestureController$SettingsObserver;->observe()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/input/KeyGestureController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1421
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$SettingsObserver;->this$0:Lcom/android/server/input/KeyGestureController;

    .line 1422
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1423
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/KeyGestureController;Landroid/os/Handler;Lcom/android/server/input/KeyGestureController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/KeyGestureController$SettingsObserver;-><init>(Lcom/android/server/input/KeyGestureController;Landroid/os/Handler;)V

    return-void
.end method

.method private observe()V
    .locals 4

    .line 1426
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$SettingsObserver;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {v0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmContext(Lcom/android/server/input/KeyGestureController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1427
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "volume_hush_gesture"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1430
    const-string/jumbo v1, "key_chord_power_volume_up"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1433
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 1437
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$SettingsObserver;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {v0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$minitBehaviorsFromSettings(Lcom/android/server/input/KeyGestureController;)V

    .line 1438
    return-void
.end method
