.class Lcom/android/server/power/stats/BatteryStatsImpl$9;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/stats/BatteryStatsImpl;->setOnBatteryLocked(JJZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field final synthetic val$initialTimeMs:J

.field final synthetic val$parcel:Landroid/os/Parcel;


# direct methods
.method constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Parcel;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/stats/BatteryStatsImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15028
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->val$parcel:Landroid/os/Parcel;

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->val$initialTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 15030
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 15031
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15032
    .local v1, "startTimeMs2":J
    const/4 v3, 0x0

    .line 15034
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 15035
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 15036
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 15037
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 15038
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmFrameworkStatsLogger(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;

    move-result-object v4

    const-string v5, "batterystats-checkin"

    iget-wide v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->val$initialTimeMs:J

    .line 15040
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    add-long/2addr v6, v8

    sub-long/2addr v6, v1

    .line 15038
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15047
    :try_start_2
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->val$parcel:Landroid/os/Parcel;

    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15048
    goto :goto_1

    .line 15049
    .end local v1    # "startTimeMs2":J
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 15047
    .restart local v1    # "startTimeMs2":J
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    goto :goto_2

    .line 15042
    :catch_0
    move-exception v4

    nop

    .line 15043
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "BatteryStats"

    const-string v6, "Error writing checkin battery statistics"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15045
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 15047
    .end local v4    # "e":Ljava/io/IOException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->val$parcel:Landroid/os/Parcel;

    goto :goto_0

    .line 15049
    .end local v1    # "startTimeMs2":J
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    monitor-exit v0

    .line 15050
    return-void

    .line 15047
    .restart local v1    # "startTimeMs2":J
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$9;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 15048
    nop

    .end local p0    # "this":Lcom/android/server/power/stats/BatteryStatsImpl$9;
    throw v4

    .line 15049
    .end local v1    # "startTimeMs2":J
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/power/stats/BatteryStatsImpl$9;
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
