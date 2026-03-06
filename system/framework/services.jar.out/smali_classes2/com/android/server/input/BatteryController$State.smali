.class Lcom/android/server/input/BatteryController$State;
.super Landroid/hardware/input/IInputDeviceBatteryState;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 1034
    invoke-direct {p0}, Landroid/hardware/input/IInputDeviceBatteryState;-><init>()V

    .line 1035
    invoke-virtual {p0, p1}, Lcom/android/server/input/BatteryController$State;->reset(I)V

    .line 1036
    return-void
.end method

.method constructor <init>(IJZIF)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "updateTime"    # J
    .param p4, "isPresent"    # Z
    .param p5, "status"    # I
    .param p6, "capacity"    # F

    .line 1042
    invoke-direct {p0}, Landroid/hardware/input/IInputDeviceBatteryState;-><init>()V

    .line 1043
    invoke-direct/range {p0 .. p6}, Lcom/android/server/input/BatteryController$State;->initialize(IJZIF)V

    .line 1044
    return-void
.end method

.method constructor <init>(Landroid/hardware/input/IInputDeviceBatteryState;)V
    .locals 0
    .param p1, "s"    # Landroid/hardware/input/IInputDeviceBatteryState;

    .line 1038
    invoke-direct {p0}, Landroid/hardware/input/IInputDeviceBatteryState;-><init>()V

    .line 1039
    invoke-direct {p0, p1}, Lcom/android/server/input/BatteryController$State;->copyFrom(Landroid/hardware/input/IInputDeviceBatteryState;)V

    .line 1040
    return-void
.end method

.method private copyFrom(Landroid/hardware/input/IInputDeviceBatteryState;)V
    .locals 7
    .param p1, "s"    # Landroid/hardware/input/IInputDeviceBatteryState;

    .line 1059
    iget v1, p1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    iget-wide v2, p1, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    iget-boolean v4, p1, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    iget v5, p1, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    iget v6, p1, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/input/BatteryController$State;->initialize(IJZIF)V

    .line 1060
    return-void
.end method

.method private initialize(IJZIF)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "updateTime"    # J
    .param p4, "isPresent"    # Z
    .param p5, "status"    # I
    .param p6, "capacity"    # F

    .line 1064
    iput p1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 1065
    iput-wide p2, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 1066
    iput-boolean p4, p0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    .line 1067
    iput p5, p0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    .line 1068
    iput p6, p0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    .line 1069
    return-void
.end method


# virtual methods
.method public equalsIgnoringUpdateTime(Landroid/hardware/input/IInputDeviceBatteryState;)Z
    .locals 4
    .param p1, "other"    # Landroid/hardware/input/IInputDeviceBatteryState;

    .line 1072
    iget-wide v0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 1073
    .local v0, "updateTime":J
    iget-wide v2, p1, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    iput-wide v2, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 1074
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputDeviceBatteryState;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1075
    .local v2, "eq":Z
    iput-wide v0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 1076
    return v2
.end method

.method public reset(I)V
    .locals 7
    .param p1, "deviceId"    # I

    .line 1054
    const/4 v5, 0x1

    const/high16 v6, 0x7fc00000    # Float.NaN

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    .end local p1    # "deviceId":I
    .local v1, "deviceId":I
    invoke-direct/range {v0 .. v6}, Lcom/android/server/input/BatteryController$State;->initialize(IJZIF)V

    .line 1056
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1081
    iget-boolean v0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    if-nez v0, :cond_0

    .line 1082
    const-string v0, "State{<not present>}"

    return-object v0

    .line 1084
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateIfChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V
    .locals 1
    .param p1, "other"    # Landroid/hardware/input/IInputDeviceBatteryState;

    .line 1048
    invoke-virtual {p0, p1}, Lcom/android/server/input/BatteryController$State;->equalsIgnoringUpdateTime(Landroid/hardware/input/IInputDeviceBatteryState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1049
    invoke-direct {p0, p1}, Lcom/android/server/input/BatteryController$State;->copyFrom(Landroid/hardware/input/IInputDeviceBatteryState;)V

    .line 1051
    :cond_0
    return-void
.end method
