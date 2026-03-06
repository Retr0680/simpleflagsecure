.class Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;
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
    name = "BasicEnveloperBuilderWrapper"
.end annotation


# instance fields
.field private mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2976
    new-instance v0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public addControlPoint(FFJ)V
    .locals 1
    .param p1, "intensity"    # F
    .param p2, "sharpness"    # F
    .param p3, "duration"    # J

    .line 2986
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->addControlPoint(FFJ)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    .line 2987
    return-void
.end method

.method public build()Landroid/os/VibrationEffect;
    .locals 1

    .line 2997
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public reset(F)V
    .locals 1
    .param p1, "initialSharpness"    # F

    .line 2991
    new-instance v0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    .line 2992
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-virtual {v0, p1}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->setInitialSharpness(F)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    .line 2993
    return-void
.end method

.method public setInitialSharpness(F)V
    .locals 1
    .param p1, "sharpness"    # F

    .line 2981
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;->mBuilder:Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-virtual {v0, p1}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->setInitialSharpness(F)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    .line 2982
    return-void
.end method
