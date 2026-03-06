.class Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;
.super Ljava/lang/Object;
.source "HdrBrightnessModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    .line 406
    return-void
.end method


# virtual methods
.method isLowPowerMode()Z
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    .line 427
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 426
    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method registerContentObserver(Landroid/database/ContentObserver;Landroid/net/Uri;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/ContentObserver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 417
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p2, v1, p1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 419
    return-void
.end method

.method registerHdrListener(Landroid/view/SurfaceControlHdrLayerInfoListener;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/SurfaceControlHdrLayerInfoListener;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 409
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControlHdrLayerInfoListener;->register(Landroid/os/IBinder;)V

    .line 410
    return-void
.end method

.method unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 422
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 423
    return-void
.end method

.method unregisterHdrListener(Landroid/view/SurfaceControlHdrLayerInfoListener;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/SurfaceControlHdrLayerInfoListener;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 413
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    .line 414
    return-void
.end method
