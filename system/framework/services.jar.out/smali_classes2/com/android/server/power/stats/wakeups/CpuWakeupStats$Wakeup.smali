.class final Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
.super Ljava/lang/Object;
.source "CpuWakeupStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/wakeups/CpuWakeupStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Wakeup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;
    }
.end annotation


# static fields
.field private static final ABORT_REASON_PREFIX:Ljava/lang/String; = "Abort"

.field private static final PARSER_TAG:Ljava/lang/String; = "CpuWakeupStats.Wakeup"

.field static final TYPE_ABNORMAL:I = 0x2

.field static final TYPE_IRQ:I = 0x1

.field private static final sIrqPattern:Ljava/util/regex/Pattern;


# instance fields
.field mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

.field mElapsedMillis:J

.field mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

.field mType:I

.field mUptimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 547
    const-string v0, "^(\\-?\\d+)\\s+(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->sIrqPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(I[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;JJLandroid/util/SparseBooleanArray;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "devices"    # [Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;
    .param p3, "elapsedMillis"    # J
    .param p5, "uptimeMillis"    # J
    .param p7, "responsibleSubsystems"    # Landroid/util/SparseBooleanArray;

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mType:I

    .line 570
    iput-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    .line 571
    iput-wide p3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    .line 572
    iput-wide p5, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mUptimeMillis:J

    .line 573
    iput-object p7, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    .line 574
    return-void
.end method

.method static parseWakeup(Ljava/lang/String;JJLcom/android/server/power/stats/wakeups/IrqDeviceMap;)Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    .locals 20
    .param p0, "rawReason"    # Ljava/lang/String;
    .param p1, "elapsedMillis"    # J
    .param p3, "uptimeMillis"    # J
    .param p5, "deviceMap"    # Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    .line 578
    const-string v0, ":"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, "components":[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v4, 0x0

    aget-object v0, v2, v4

    const-string v5, "Abort"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v3, p5

    const/16 v17, 0x0

    goto/16 :goto_3

    .line 584
    :cond_0
    const/4 v0, 0x1

    .line 585
    .local v0, "type":I
    const/4 v5, 0x0

    .line 586
    .local v5, "parsedDeviceCount":I
    array-length v6, v2

    new-array v6, v6, [Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    .line 587
    .local v6, "parsedDevices":[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v15, v7

    .line 589
    .local v15, "responsibleSubsystems":Landroid/util/SparseBooleanArray;
    array-length v7, v2

    move v9, v0

    move v8, v4

    .end local v0    # "type":I
    .local v9, "type":I
    :goto_0
    const/4 v0, -0x1

    const/4 v10, 0x1

    if-ge v8, v7, :cond_6

    aget-object v11, v2, v8

    .line 590
    .local v11, "component":Ljava/lang/String;
    sget-object v12, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->sIrqPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 591
    .local v12, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 595
    :try_start_0
    invoke-virtual {v12, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 596
    .local v13, "line":I
    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .local v14, "device":Ljava/lang/String;
    if-gez v13, :cond_1

    .line 599
    const/4 v9, 0x2

    .line 605
    :cond_1
    nop

    .line 606
    add-int/lit8 v16, v5, 0x1

    const/16 v17, 0x0

    .end local v5    # "parsedDeviceCount":I
    .local v16, "parsedDeviceCount":I
    new-instance v3, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    invoke-direct {v3, v13, v14}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;-><init>(ILjava/lang/String;)V

    aput-object v3, v6, v5

    .line 608
    move-object/from16 v3, p5

    invoke-virtual {v3, v14}, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;->getSubsystemsForDevice(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 609
    .local v5, "rawSubsystems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .line 610
    .local v18, "anyKnownSubsystem":Z
    if-eqz v5, :cond_3

    .line 611
    const/16 v19, 0x0

    move/from16 v4, v19

    .local v4, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_3

    .line 612
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->stringToKnownSubsystem(Ljava/lang/String;)I

    move-result v10

    .line 613
    .local v10, "subsystem":I
    if-eq v10, v0, :cond_2

    .line 616
    const/4 v0, 0x1

    invoke-virtual {v15, v10, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 617
    const/4 v0, 0x1

    move/from16 v18, v0

    .line 611
    .end local v10    # "subsystem":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    const/4 v0, -0x1

    const/4 v10, 0x1

    goto :goto_1

    .line 621
    .end local v4    # "i":I
    :cond_3
    if-nez v18, :cond_4

    .line 622
    const/4 v0, -0x1

    const/4 v4, 0x1

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 589
    .end local v5    # "rawSubsystems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "component":Ljava/lang/String;
    .end local v12    # "matcher":Ljava/util/regex/Matcher;
    .end local v13    # "line":I
    .end local v14    # "device":Ljava/lang/String;
    .end local v18    # "anyKnownSubsystem":Z
    :cond_4
    move/from16 v5, v16

    goto :goto_2

    .line 601
    .end local v16    # "parsedDeviceCount":I
    .local v5, "parsedDeviceCount":I
    .restart local v11    # "component":Ljava/lang/String;
    .restart local v12    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    move-object/from16 v3, p5

    const/16 v17, 0x0

    .line 602
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while parsing device names from part: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v10, "CpuWakeupStats.Wakeup"

    invoke-static {v10, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    goto :goto_2

    .line 591
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    move-object/from16 v3, p5

    const/16 v17, 0x0

    .line 589
    .end local v11    # "component":Ljava/lang/String;
    .end local v12    # "matcher":Ljava/util/regex/Matcher;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 626
    :cond_6
    move-object/from16 v3, p5

    const/16 v17, 0x0

    if-nez v5, :cond_7

    .line 627
    return-object v17

    .line 629
    :cond_7
    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_8

    const/4 v0, -0x1

    const/4 v4, 0x0

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 632
    return-object v17

    .line 634
    :cond_8
    new-instance v8, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    invoke-direct/range {v8 .. v15}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;-><init>(I[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;JJLandroid/util/SparseBooleanArray;)V

    return-object v8

    .line 579
    .end local v5    # "parsedDeviceCount":I
    .end local v6    # "parsedDevices":[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;
    .end local v9    # "type":I
    .end local v15    # "responsibleSubsystems":Landroid/util/SparseBooleanArray;
    :cond_9
    move-object/from16 v3, p5

    const/16 v17, 0x0

    .line 581
    :goto_3
    return-object v17
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wakeup{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mElapsedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mUptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDevices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    .line 644
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mResponsibleSubsystems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    return-object v0
.end method
