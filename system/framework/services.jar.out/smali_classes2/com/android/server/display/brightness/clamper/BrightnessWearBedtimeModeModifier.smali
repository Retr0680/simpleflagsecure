.class public Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;
.super Ljava/lang/Object;
.source "BrightnessWearBedtimeModeModifier.java"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;,
        Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;
    }
.end annotation


# static fields
.field public static final BEDTIME_MODE_OFF:I = 0x0

.field public static final BEDTIME_MODE_ON:I = 0x1


# instance fields
.field private mApplied:Z

.field private mBrightnessCap:F

.field protected final mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field private final mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$CvVTaiZ0sYWDHzBUCScOgH5ikzU(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->lambda$onDisplayChanged$0(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsActive(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mIsActive:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;)V
    .locals 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    .param p4, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;

    .line 54
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "listener":Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    .end local p4    # "data":Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "context":Landroid/content/Context;
    .local v4, "listener":Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    .local v5, "data":Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;)V

    .line 55
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;)V
    .locals 2
    .param p1, "injector"    # Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "listener"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    .param p5, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mIsActive:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mApplied:Z

    .line 60
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 62
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mContext:Landroid/content/Context;

    .line 63
    invoke-interface {p5}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;->getBrightnessWearBedtimeModeCap()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    .line 64
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 75
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;->registerBedtimeModeObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 76
    return-void
.end method

.method private synthetic lambda$onDisplayChanged$0(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 1
    .param p1, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 127
    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getBrightnessWearBedtimeModeCap()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    .line 128
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 129
    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 3
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "stateBuilder"    # Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 82
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mIsActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getMaxBrightness()F

    move-result v0

    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 83
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setMaxBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 84
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result v0

    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 85
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessMaxReason(I)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 87
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 90
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mApplied:Z

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p2, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 93
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mApplied:Z

    goto :goto_0

    .line 95
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mApplied:Z

    .line 97
    :goto_0
    return-void
.end method

.method public applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V
    .locals 2
    .param p1, "aggregatedState"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    .line 137
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mIsActive:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 138
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    iput v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    .line 139
    const/4 v0, 0x3

    iput v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    .line 142
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 106
    const-string v0, "BrightnessWearBedtimeModeModifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessCap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 2
    .param p1, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 126
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method

.method public setAmbientLux(F)V
    .locals 0
    .param p1, "lux"    # F

    .line 120
    return-void
.end method

.method public shouldListenToLightSensor()Z
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public stop()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 102
    return-void
.end method
