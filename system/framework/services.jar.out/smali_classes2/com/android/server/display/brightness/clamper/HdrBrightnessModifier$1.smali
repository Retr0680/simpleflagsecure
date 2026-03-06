.class Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;
.super Landroid/view/SurfaceControlHdrLayerInfoListener;
.source "HdrBrightnessModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;


# direct methods
.method public static synthetic $r8$lambda$tA6jNs_7pjoXYUSOu7koQISLea8(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;ZIIF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;->lambda$onHdrInfoChanged$0(ZIIF)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-direct {p0}, Landroid/view/SurfaceControlHdrLayerInfoListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onHdrInfoChanged$0(ZIIF)V
    .locals 3
    .param p1, "hdrLayerPresent"    # Z
    .param p2, "maxW"    # I
    .param p3, "maxH"    # I
    .param p4, "maxDesiredHdrSdrRatio"    # F

    .line 63
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    .line 64
    if-eqz p1, :cond_0

    mul-int v1, p2, p3

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 65
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    invoke-static {p4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_1

    .line 66
    :cond_1
    nop

    .line 63
    :goto_1
    invoke-static {v0, v1, v2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$monHdrInfoChanged(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;FF)V

    return-void
.end method


# virtual methods
.method public onHdrInfoChanged(Landroid/os/IBinder;IIIIF)V
    .locals 7
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "numberOfHdrLayers"    # I
    .param p3, "maxW"    # I
    .param p4, "maxH"    # I
    .param p5, "flags"    # I
    .param p6, "maxDesiredHdrSdrRatio"    # F

    .line 62
    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    .line 63
    .local v3, "hdrLayerPresent":Z
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmHandler(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v4, p3

    move v5, p4

    move v6, p6

    .end local p3    # "maxW":I
    .end local p4    # "maxH":I
    .end local p6    # "maxDesiredHdrSdrRatio":F
    .local v4, "maxW":I
    .local v5, "maxH":I
    .local v6, "maxDesiredHdrSdrRatio":F
    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;ZIIF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-void
.end method
