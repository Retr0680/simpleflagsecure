.class Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdvancedEnveloperBuilderWrapper"
.end annotation


# instance fields
.field private mBuilder:Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3002
    new-instance v0, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public addControlPoint(FFJ)V
    .locals 1
    .param p1, "intensity"    # F
    .param p2, "sharpness"    # F
    .param p3, "duration"    # J

    .line 3012
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->addControlPoint(FFJ)Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    .line 3013
    return-void
.end method

.method public build()Landroid/os/VibrationEffect;
    .locals 1

    .line 3023
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public reset(F)V
    .locals 1
    .param p1, "initialSharpness"    # F

    .line 3017
    new-instance v0, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    .line 3018
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-virtual {v0, p1}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->setInitialFrequencyHz(F)Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    .line 3019
    return-void
.end method

.method public setInitialSharpness(F)V
    .locals 1
    .param p1, "sharpness"    # F

    .line 3007
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-virtual {v0, p1}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->setInitialFrequencyHz(F)Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    .line 3008
    return-void
.end method
