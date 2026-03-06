.class public interface abstract Lcom/android/server/lights/INtGlyphService;
.super Ljava/lang/Object;
.source "INtGlyphService.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/lights/INtGlyphService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/android/server/lights/INtGlyphService$1;

    invoke-direct {v0}, Lcom/android/server/lights/INtGlyphService$1;-><init>()V

    sput-object v0, Lcom/android/server/lights/INtGlyphService;->DEFAULT:Lcom/android/server/lights/INtGlyphService;

    return-void
.end method


# virtual methods
.method public callerHasPermission(I)Z
    .locals 1
    .param p1, "lightId"    # I

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getNtLights()[Landroid/hardware/light/HwLight;
    .locals 1

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidateLightStates(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/lights/LightState;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "states":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/hardware/lights/LightState;>;"
    return-void
.end method

.method public isNtLight(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDebugOperation(I)V
    .locals 0
    .param p1, "operation"    # I

    .line 31
    return-void
.end method

.method public notifyScreenState(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .line 32
    return-void
.end method

.method public onSystemReady()V
    .locals 0

    .line 30
    return-void
.end method
