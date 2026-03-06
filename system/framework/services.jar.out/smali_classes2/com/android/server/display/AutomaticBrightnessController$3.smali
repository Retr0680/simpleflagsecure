.class Lcom/android/server/display/AutomaticBrightnessController$3;
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

    .line 1554
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1591
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1557
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmLightSensorEnabled(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1558
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmClock(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/AutomaticBrightnessController$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 1559
    .local v0, "time":J
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 1560
    .local v2, "lux":F
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 1562
    return-void

    .line 1564
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmLastSampleBackLux(Lcom/android/server/display/AutomaticBrightnessController;F)V

    .line 1572
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmUseBackLightSensor(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmLastSampleFrontLux(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v3

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmLastSampleBackLux(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    cmpg-float v3, v3, v6

    if-gez v3, :cond_2

    .line 1573
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmBackLargeStartTime(Lcom/android/server/display/AutomaticBrightnessController;)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-nez v3, :cond_1

    .line 1574
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmBackLargeStartTime(Lcom/android/server/display/AutomaticBrightnessController;J)V

    goto :goto_0

    .line 1575
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmBackLargeStartTime(Lcom/android/server/display/AutomaticBrightnessController;)J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    cmp-long v3, v0, v6

    if-lez v3, :cond_3

    .line 1576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fit two sensor values, mLastSampleFrontLux="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmLastSampleFrontLux(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " mLastSampleBackLux="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmLastSampleBackLux(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "AutomaticBrightnessController"

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmUseBackLightSensor(Lcom/android/server/display/AutomaticBrightnessController;Z)V

    .line 1580
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmBackLargeStartTime(Lcom/android/server/display/AutomaticBrightnessController;J)V

    goto :goto_0

    .line 1583
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmBackLargeStartTime(Lcom/android/server/display/AutomaticBrightnessController;J)V

    .line 1586
    .end local v0    # "time":J
    .end local v2    # "lux":F
    :cond_3
    :goto_0
    return-void
.end method
