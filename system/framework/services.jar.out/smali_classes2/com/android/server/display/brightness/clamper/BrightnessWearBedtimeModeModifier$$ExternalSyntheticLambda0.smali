.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

.field public final synthetic f$1:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    invoke-static {v0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->$r8$lambda$CvVTaiZ0sYWDHzBUCScOgH5ikzU(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method
