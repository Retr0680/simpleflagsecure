.class Lcom/android/server/display/AutomaticBrightnessController$2;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1501
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1550
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1513
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmLightSensorEnabled(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1514
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmClock(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/AutomaticBrightnessController$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 1515
    .local v0, "time":J
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 1516
    .local v2, "lux":F
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmLastSampleFrontLux(Lcom/android/server/display/AutomaticBrightnessController;F)V

    .line 1524
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmDualLightSensorSupport(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1525
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmUseBackLightSensor(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmLastSampleFrontLux(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmLastSampleBackLux(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_1

    .line 1526
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmFrontLargeStartTime(Lcom/android/server/display/AutomaticBrightnessController;)J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_0

    .line 1527
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmFrontLargeStartTime(Lcom/android/server/display/AutomaticBrightnessController;J)V

    goto :goto_0

    .line 1528
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmFrontLargeStartTime(Lcom/android/server/display/AutomaticBrightnessController;)J

    move-result-wide v7

    const-wide/16 v9, 0x1f4

    add-long/2addr v7, v9

    cmp-long v4, v0, v7

    if-lez v4, :cond_2

    .line 1529
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Switching to front sensor, mLastSampleFrontLux="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmLastSampleFrontLux(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " mLastSampleBackLux="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmLastSampleBackLux(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "AutomaticBrightnessController"

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmUseBackLightSensor(Lcom/android/server/display/AutomaticBrightnessController;Z)V

    .line 1533
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmFrontLargeStartTime(Lcom/android/server/display/AutomaticBrightnessController;J)V

    goto :goto_0

    .line 1536
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmFrontLargeStartTime(Lcom/android/server/display/AutomaticBrightnessController;J)V

    .line 1539
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmUseBackLightSensor(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1540
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v4, v2, v3

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmLastSampleBackLux(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v5

    mul-float/2addr v5, v3

    add-float v2, v4, v5

    .line 1542
    :cond_3
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mhandleLightSensorEvent(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    .line 1545
    .end local v0    # "time":J
    .end local v2    # "lux":F
    :cond_4
    return-void
.end method
