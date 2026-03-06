.class Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;
.super Landroid/database/ContentObserver;
.source "BrightnessWearBedtimeModeModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;


# direct methods
.method constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 67
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->-$$Nest$fgetmContext(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;)Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    const-string v1, "bedtime_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 71
    .local v0, "bedtimeModeSetting":I
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v1, v2}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->-$$Nest$fputmIsActive(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Z)V

    .line 72
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

    iget-object v1, v1, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 73
    return-void
.end method
