.class Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;
.super Ljava/lang/Object;
.source "BrightnessClamperController.java"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightness/clamper/BrightnessClamperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;


# direct methods
.method public static synthetic $r8$lambda$syL2Q9eql9hG0-EAx6p4vg3nSqY(FLcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;->lambda$onAmbientLuxChange$0(FLcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onAmbientLuxChange$0(FLcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V
    .locals 0
    .param p0, "lux"    # F
    .param p1, "mModifier"    # Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;

    .line 82
    invoke-interface {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;->setAmbientLux(F)V

    return-void
.end method


# virtual methods
.method public onAmbientLuxChange(F)V
    .locals 2
    .param p1, "lux"    # F

    .line 82
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->-$$Nest$fgetmModifiers(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1$$ExternalSyntheticLambda0;-><init>(F)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 83
    return-void
.end method
