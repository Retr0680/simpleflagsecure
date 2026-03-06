.class final Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;
.super Ljava/lang/Object;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationPowerSaveModeEvent"
.end annotation


# instance fields
.field private final mLocationPowerSaveMode:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "locationPowerSaveMode"    # I

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;->mLocationPowerSaveMode:I

    .line 489
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 494
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;->mLocationPowerSaveMode:I

    packed-switch v0, :pswitch_data_0

    .line 511
    const-string v0, "UNKNOWN"

    .local v0, "mode":Ljava/lang/String;
    goto :goto_0

    .line 508
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_0
    const-string v0, "THROTTLE_REQUESTS_WHEN_SCREEN_OFF"

    .line 509
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 505
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_1
    const-string v0, "FOREGROUND_ONLY"

    .line 506
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 502
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_2
    const-string v0, "ALL_DISABLED_WHEN_SCREEN_OFF"

    .line 503
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 499
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_3
    const-string v0, "GPS_DISABLED_WHEN_SCREEN_OFF"

    .line 500
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 496
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_4
    const-string v0, "NO_CHANGE"

    .line 497
    .restart local v0    # "mode":Ljava/lang/String;
    nop

    .line 514
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "location power save mode changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
