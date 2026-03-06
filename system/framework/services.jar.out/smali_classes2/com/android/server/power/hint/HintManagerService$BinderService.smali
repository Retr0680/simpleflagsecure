.class final Lcom/android/server/power/hint/HintManagerService$BinderService;
.super Landroid/os/IHintManager$Stub;
.source "HintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/hint/HintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public static synthetic $r8$lambda$AKdD3UK6LHX3HgXwIyWtFQGJ9hI(Ljava/lang/Integer;)Landroid/util/ArraySet;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->lambda$createHintSessionWithConfig$2(Ljava/lang/Integer;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eyDdSdezowLMa2_XJTKMNA6O98o(Lcom/android/server/power/hint/HintManagerService$BinderService;Ljava/lang/Integer;)Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/hint/HintManagerService$BinderService;->lambda$createHintSessionWithConfig$1(Ljava/lang/Integer;)Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wW5vMRz9tM1od40u5pT8Q15YZ20(Ljava/lang/Integer;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->lambda$createHintSessionWithConfig$0(Ljava/lang/Integer;)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/power/hint/HintManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/hint/HintManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1348
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {p0}, Landroid/os/IHintManager$Stub;-><init>()V

    return-void
.end method

.method private checkCpuHeadroomParams(Landroid/os/CpuHeadroomParamsInternal;)V
    .locals 7
    .param p1, "params"    # Landroid/os/CpuHeadroomParamsInternal;

    .line 1707
    const/4 v0, 0x0

    .line 1710
    .local v0, "calculationTypeMatched":Z
    :try_start_0
    const-class v1, Landroid/hardware/power/CpuHeadroomParams$CalculationType;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1711
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_0

    .line 1712
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v5

    .line 1713
    .local v5, "value":B
    iget-byte v6, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_0

    .line 1714
    const/4 v0, 0x1

    .line 1715
    goto :goto_1

    .line 1719
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "value":B
    :catch_0
    move-exception v1

    goto :goto_2

    .line 1710
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1721
    :cond_1
    :goto_1
    goto :goto_3

    .line 1719
    :goto_2
    nop

    .line 1720
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "HintManagerService"

    const-string v3, "Checking the calculation type was unexpectedly not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_3
    if-eqz v0, :cond_6

    .line 1726
    iget v1, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    if-lt v1, v2, :cond_5

    iget v1, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    if-gt v1, v2, :cond_5

    .line 1737
    iget-boolean v1, p1, Landroid/os/CpuHeadroomParamsInternal;->usesDeviceHeadroom:Z

    if-nez v1, :cond_4

    .line 1738
    iget-object v1, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomMaxTidCnt(Lcom/android/server/power/hint/HintManagerService;)I

    move-result v2

    if-gt v1, v2, :cond_3

    :cond_2
    goto :goto_4

    .line 1739
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "More than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomMaxTidCnt(Lcom/android/server/power/hint/HintManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " TIDs requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1744
    :cond_4
    :goto_4
    return-void

    .line 1729
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid CPU headroom calculation window, expected ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v3, v3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v3, v3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1723
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown CPU headroom calculation type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkGpuHeadroomParams(Landroid/os/GpuHeadroomParamsInternal;)V
    .locals 7
    .param p1, "params"    # Landroid/os/GpuHeadroomParamsInternal;

    .line 1777
    const/4 v0, 0x0

    .line 1780
    .local v0, "calculationTypeMatched":Z
    :try_start_0
    const-class v1, Landroid/hardware/power/GpuHeadroomParams$CalculationType;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1781
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_0

    .line 1782
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v5

    .line 1783
    .local v5, "value":B
    iget-byte v6, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_0

    .line 1784
    const/4 v0, 0x1

    .line 1785
    goto :goto_1

    .line 1789
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "value":B
    :catch_0
    move-exception v1

    goto :goto_2

    .line 1780
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1791
    :cond_1
    :goto_1
    goto :goto_3

    .line 1789
    :goto_2
    nop

    .line 1790
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "HintManagerService"

    const-string v3, "Checking the calculation type was unexpectedly not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_3
    if-eqz v0, :cond_3

    .line 1796
    iget v1, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    if-gt v1, v2, :cond_2

    .line 1805
    return-void

    .line 1799
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid GPU headroom calculation window, expected ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v3, v3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v3, v3, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1793
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown GPU headroom calculation type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkPerUidUserModeCpuTimeElapsedLocked(I)Z
    .locals 7
    .param p1, "uid"    # I

    .line 1677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLastCpuUserModeTimeCheckedMillis(Lcom/android/server/power/hint/HintManagerService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCheckHeadroomProcStatMinMillis(Lcom/android/server/power/hint/HintManagerService;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-string v2, "HintManagerService"

    if-lez v0, :cond_0

    .line 1680
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->getUserModeJiffies()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fputmLastCpuUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1684
    nop

    .line 1685
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fputmLastCpuUserModeTimeCheckedMillis(Lcom/android/server/power/hint/HintManagerService;J)V

    goto :goto_0

    .line 1681
    :catch_0
    move-exception v0

    .line 1682
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Failed to get user mode CPU time"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1683
    return v1

    .line 1687
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmUidToLastUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1688
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmUidToLastUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1689
    .local v3, "uidLastUserModeJiffies":J
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLastCpuUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)J

    move-result-wide v5

    sub-long/2addr v5, v3

    long-to-float v0, v5

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget v5, v5, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    mul-float/2addr v0, v5

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v5}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v5, v5, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    .line 1691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is requesting CPU headroom too soon"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " last request at "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v5, v3

    iget-object v6, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget v6, v6, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    mul-float/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms with device currently at "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v5}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLastCpuUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)J

    move-result-wide v5

    long-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget v6, v6, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    mul-float/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms, the interval: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v5}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLastCpuUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)J

    move-result-wide v5

    sub-long/2addr v5, v3

    long-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget v6, v6, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    mul-float/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms is less than require minimum interval "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v5}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v5, v5, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    return v1

    .line 1703
    .end local v3    # "uidLastUserModeJiffies":J
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkThreadAffinityForTids([I)V
    .locals 8
    .param p1, "tids"    # [I

    .line 1651
    const-string v0, "HintManagerService"

    const/4 v1, 0x0

    .line 1652
    .local v1, "reference":[J
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, p1, v4

    .line 1655
    .local v5, "tid":I
    :try_start_0
    invoke-static {v5}, Landroid/os/Process;->getSchedAffinity(I)[J

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1659
    .local v6, "affinity":[J
    nop

    .line 1660
    if-nez v1, :cond_0

    .line 1661
    move-object v1, v6

    goto :goto_1

    .line 1662
    :cond_0
    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1652
    .end local v5    # "tid":I
    .end local v6    # "affinity":[J
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1663
    .restart local v5    # "tid":I
    .restart local v6    # "affinity":[J
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread affinity is different: tid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", tid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1665
    invoke-static {v6}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1663
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread affinity is not the same for tids "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1656
    .end local v6    # "affinity":[J
    :catch_0
    move-exception v2

    .line 1657
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get affinity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1658
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not check affinity for tid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1670
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "tid":I
    :cond_2
    return-void
.end method

.method private getUidApplicationCategory(I)I
    .locals 3
    .param p1, "uid"    # I

    .line 1938
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/power/hint/HintManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1939
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/power/hint/HintManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1940
    const/high16 v2, 0x20000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1941
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1942
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1943
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method private getUserModeJiffies()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1911
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmProcStatFilePathOverride(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "/proc/stat"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmProcStatFilePathOverride(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/String;

    move-result-object v0

    .line 1912
    .local v0, "filePath":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1914
    .local v1, "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1915
    invoke-static {}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$sfgetPROC_STAT_CPU_TIME_TOTAL_PATTERN()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1916
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1917
    const-string/jumbo v4, "user"

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1918
    .local v4, "userJiffies":J
    const-string/jumbo v6, "nice"

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1919
    .local v6, "niceJiffies":J
    const-string v8, "HintManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "user: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " nice: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " total "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v10, v4, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1923
    add-long v8, v4, v6

    .line 1926
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1923
    return-wide v8

    .line 1912
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "userJiffies":J
    .end local v6    # "niceJiffies":J
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1916
    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_1
    nop

    .line 1925
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    goto :goto_1

    .line 1914
    :cond_2
    nop

    .line 1926
    .end local v3    # "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1927
    .end local v1    # "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find cpu line in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1912
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
.end method

.method private static synthetic lambda$createHintSessionWithConfig$0(Ljava/lang/Integer;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "k"    # Ljava/lang/Integer;

    .line 1477
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method private synthetic lambda$createHintSessionWithConfig$1(Ljava/lang/Integer;)Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;
    .locals 2
    .param p1, "k"    # Ljava/lang/Integer;

    .line 1478
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    return-object v0
.end method

.method private static synthetic lambda$createHintSessionWithConfig$2(Ljava/lang/Integer;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "k"    # Ljava/lang/Integer;

    .line 1517
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method private logPerformanceHintSessionAtom(IJJ[II)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "sessionId"    # J
    .param p4, "targetDuration"    # J
    .param p6, "tids"    # [I
    .param p7, "sessionTag"    # I

    .line 1932
    const/16 v0, 0x23e

    array-length v6, p6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v7, p7

    .end local p1    # "uid":I
    .end local p2    # "sessionId":J
    .end local p4    # "targetDuration":J
    .end local p7    # "sessionTag":I
    .local v1, "uid":I
    .local v2, "sessionId":J
    .local v4, "targetDuration":J
    .local v7, "sessionTag":I
    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJII)V

    .line 1934
    return-void
.end method


# virtual methods
.method public closeSessionChannel()V
    .locals 5

    .line 1557
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPowerHalVersion(Lcom/android/server/power/hint/HintManagerService;)I

    move-result v0

    const/4 v1, 0x5

    nop

    if-lt v0, v1, :cond_0

    .line 1560
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v0

    .line 1561
    .local v0, "callingTgid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1562
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/hint/HintManagerService;->removeChannelItem(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1563
    return-void

    .line 1558
    .end local v0    # "callingTgid":I
    .end local v1    # "callingUid":I
    :cond_0
    return-void
.end method

.method public createHintSessionWithConfig(Landroid/os/IBinder;ILandroid/os/SessionCreationConfig;Landroid/hardware/power/SessionConfig;)Landroid/os/IHintManager$SessionCreationReturn;
    .locals 29
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # I
    .param p3, "creationConfig"    # Landroid/os/SessionCreationConfig;
    .param p4, "config"    # Landroid/hardware/power/SessionConfig;

    .line 1353
    move-object/from16 v1, p0

    move-object/from16 v12, p3

    move-object/from16 v9, p4

    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$misHintSessionSupported(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1357
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1358
    iget-object v0, v12, Landroid/os/SessionCreationConfig;->tids:[I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1360
    iget-object v5, v12, Landroid/os/SessionCreationConfig;->tids:[I

    .line 1361
    .local v5, "tids":[I
    array-length v0, v5

    const/4 v14, 0x1

    if-eqz v0, :cond_0

    move v0, v14

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v2, "tids should not be empty."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1365
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1366
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v3

    .line 1367
    .local v3, "callingTgid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1368
    .local v15, "identity":J
    iget-wide v6, v12, Landroid/os/SessionCreationConfig;->targetWorkDurationNanos:J

    .line 1370
    .local v6, "durationNanos":J
    const/4 v0, 0x0

    .line 1371
    .local v0, "isGraphicsPipeline":Z
    const/4 v4, 0x0

    .line 1372
    .local v4, "isAutoTimed":Z
    iget-object v8, v12, Landroid/os/SessionCreationConfig;->modesToEnable:[I

    if-eqz v8, :cond_5

    .line 1373
    iget-object v8, v12, Landroid/os/SessionCreationConfig;->modesToEnable:[I

    array-length v10, v8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_4

    aget v13, v8, v11

    .line 1374
    .local v13, "mode":I
    if-ne v13, v14, :cond_1

    .line 1375
    const/4 v0, 0x1

    .line 1377
    :cond_1
    move/from16 v18, v14

    const/4 v14, 0x2

    if-eq v13, v14, :cond_2

    const/4 v14, 0x3

    if-ne v13, v14, :cond_3

    .line 1378
    :cond_2
    const/4 v4, 0x1

    .line 1373
    .end local v13    # "mode":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v14, v18

    goto :goto_1

    :cond_4
    move/from16 v18, v14

    move v13, v0

    move v14, v4

    goto :goto_2

    .line 1372
    :cond_5
    move/from16 v18, v14

    move v13, v0

    move v14, v4

    .line 1383
    .end local v0    # "isGraphicsPipeline":Z
    .end local v4    # "isAutoTimed":Z
    .local v13, "isGraphicsPipeline":Z
    .local v14, "isAutoTimed":Z
    :goto_2
    if-eqz v14, :cond_6

    .line 1384
    const-string/jumbo v0, "graphics pipeline mode not enabled for an automatically timed session"

    invoke-static {v13, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1389
    :cond_6
    :try_start_0
    new-instance v0, Landroid/util/IntArray;

    array-length v4, v5

    invoke-direct {v0, v4}, Landroid/util/IntArray;-><init>(I)V

    .line 1390
    move-object v10, v0

    .line 1391
    .local v10, "nonIsolated":Landroid/util/IntArray;
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0, v2, v3, v5, v10}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/util/IntArray;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_28

    move-object v11, v0

    .line 1393
    .local v11, "invalidTid":Ljava/lang/Integer;
    if-nez v11, :cond_17

    .line 1398
    nop

    .line 1400
    :try_start_1
    array-length v0, v5

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_8

    aget v8, v5, v4

    .line 1401
    .local v8, "tid":I
    invoke-static {v8}, Landroid/os/Process;->getThreadScheduler(I)I

    move-result v19

    .line 1404
    .local v19, "policy":I
    if-eqz v19, :cond_7

    .line 1405
    move/from16 v20, v0

    move/from16 v22, v3

    goto :goto_4

    .line 1408
    :cond_7
    invoke-static {v8}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v21, v20

    .line 1409
    .local v21, "prio":I
    move/from16 v20, v0

    const/high16 v0, 0x40000000    # 2.0f

    move/from16 v22, v3

    const/4 v3, 0x0

    .end local v3    # "callingTgid":I
    .local v22, "callingTgid":I
    :try_start_2
    invoke-static {v8, v0, v3}, Landroid/os/Process;->setThreadScheduler(III)V

    .line 1410
    move/from16 v0, v21

    .end local v21    # "prio":I
    .local v0, "prio":I
    invoke-static {v8, v0}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1400
    .end local v0    # "prio":I
    .end local v8    # "tid":I
    .end local v19    # "policy":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v20

    move/from16 v3, v22

    goto :goto_3

    .line 1530
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    move/from16 v8, p2

    move-wide v9, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move/from16 v24, v22

    move-object/from16 v6, p1

    move-object v14, v1

    goto/16 :goto_1d

    .line 1412
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v11    # "invalidTid":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    goto :goto_5

    .line 1530
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    .end local v22    # "callingTgid":I
    .restart local v3    # "callingTgid":I
    :catchall_1
    move-exception v0

    move/from16 v22, v3

    move/from16 v8, p2

    move-wide v9, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move/from16 v24, v22

    move-object/from16 v6, p1

    move-object v14, v1

    .end local v3    # "callingTgid":I
    .restart local v22    # "callingTgid":I
    goto/16 :goto_1d

    .line 1412
    .end local v22    # "callingTgid":I
    .restart local v3    # "callingTgid":I
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v11    # "invalidTid":Ljava/lang/Integer;
    :catch_1
    move-exception v0

    move/from16 v22, v3

    .end local v3    # "callingTgid":I
    .restart local v22    # "callingTgid":I
    goto :goto_5

    .line 1415
    .end local v22    # "callingTgid":I
    .restart local v3    # "callingTgid":I
    :cond_8
    move/from16 v22, v3

    .end local v3    # "callingTgid":I
    .restart local v22    # "callingTgid":I
    goto :goto_6

    .line 1412
    :goto_5
    nop

    .line 1413
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "HintManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to set SCHED_RESET_ON_FORK for tids "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1413
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_26

    .line 1418
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    const/4 v0, 0x4

    move/from16 v3, p2

    if-ne v3, v0, :cond_9

    .line 1422
    :try_start_4
    invoke-direct {v1, v2}, Lcom/android/server/power/hint/HintManagerService$BinderService;->getUidApplicationCategory(I)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    packed-switch v0, :pswitch_data_0

    .line 1429
    const/4 v0, 0x4

    move v8, v0

    .end local p2    # "tag":I
    .local v0, "tag":I
    goto :goto_7

    .line 1423
    .end local v0    # "tag":I
    .restart local p2    # "tag":I
    :pswitch_0
    const/4 v0, 0x3

    move v8, v0

    .end local p2    # "tag":I
    .restart local v0    # "tag":I
    goto :goto_7

    .line 1428
    .end local v0    # "tag":I
    .restart local p2    # "tag":I
    :pswitch_1
    const/4 v0, 0x4

    move v8, v0

    .end local p2    # "tag":I
    .restart local v0    # "tag":I
    goto :goto_7

    .line 1530
    .end local v0    # "tag":I
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    .restart local p2    # "tag":I
    :catchall_2
    move-exception v0

    move v8, v3

    move-wide v9, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move/from16 v24, v22

    move-object/from16 v6, p1

    move-object v14, v1

    goto/16 :goto_1d

    .line 1432
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v11    # "invalidTid":Ljava/lang/Integer;
    :cond_9
    move v8, v3

    .end local p2    # "tag":I
    .local v8, "tag":I
    :goto_7
    const-wide/16 v3, -0x1

    :try_start_5
    iput-wide v3, v9, Landroid/hardware/power/SessionConfig;->id:J

    .line 1433
    const/16 v19, 0x0

    .line 1434
    .local v19, "halSessionPtr":Ljava/lang/Long;
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmConfigCreationSupport(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_25

    if-eqz v0, :cond_a

    .line 1436
    :try_start_6
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;
    :try_end_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-wide/from16 v20, v3

    move/from16 v3, v22

    move v4, v2

    move-object v2, v0

    .end local v2    # "callingUid":I
    .end local v22    # "callingTgid":I
    .restart local v3    # "callingTgid":I
    .local v4, "callingUid":I
    :try_start_8
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCreateHintSessionWithConfig(II[IJILandroid/hardware/power/SessionConfig;)J

    move-result-wide v22
    :try_end_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move v2, v4

    .end local v4    # "callingUid":I
    .restart local v2    # "callingUid":I
    :try_start_9
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v19, v0

    .line 1444
    move/from16 v22, v2

    const/4 v4, 0x0

    goto/16 :goto_a

    .line 1530
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    .end local v19    # "halSessionPtr":Ljava/lang/Long;
    :catchall_3
    move-exception v0

    move/from16 v24, v3

    move-wide v9, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object/from16 v6, p1

    move-object v14, v1

    goto/16 :goto_1d

    .line 1440
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v11    # "invalidTid":Ljava/lang/Integer;
    .restart local v19    # "halSessionPtr":Ljava/lang/Long;
    :catch_2
    move-exception v0

    goto :goto_8

    .line 1438
    :catch_3
    move-exception v0

    move/from16 v22, v2

    goto/16 :goto_9

    .line 1530
    .end local v2    # "callingUid":I
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    .end local v19    # "halSessionPtr":Ljava/lang/Long;
    .restart local v4    # "callingUid":I
    :catchall_4
    move-exception v0

    move v2, v4

    move/from16 v24, v3

    move-wide v9, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object/from16 v6, p1

    move-object v14, v1

    .end local v4    # "callingUid":I
    .restart local v2    # "callingUid":I
    goto/16 :goto_1d

    .line 1440
    .end local v2    # "callingUid":I
    .restart local v4    # "callingUid":I
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v11    # "invalidTid":Ljava/lang/Integer;
    .restart local v19    # "halSessionPtr":Ljava/lang/Long;
    :catch_4
    move-exception v0

    move v2, v4

    .end local v4    # "callingUid":I
    .restart local v2    # "callingUid":I
    goto :goto_8

    .line 1438
    .end local v2    # "callingUid":I
    .restart local v4    # "callingUid":I
    :catch_5
    move-exception v0

    move v2, v4

    move/from16 v22, v2

    .end local v4    # "callingUid":I
    .restart local v2    # "callingUid":I
    goto/16 :goto_9

    .line 1530
    .end local v3    # "callingTgid":I
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    .end local v19    # "halSessionPtr":Ljava/lang/Long;
    .restart local v22    # "callingTgid":I
    :catchall_5
    move-exception v0

    move/from16 v3, v22

    move/from16 v24, v3

    move-wide v9, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object/from16 v6, p1

    move-object v14, v1

    .end local v22    # "callingTgid":I
    .restart local v3    # "callingTgid":I
    goto/16 :goto_1d

    .line 1440
    .end local v3    # "callingTgid":I
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v11    # "invalidTid":Ljava/lang/Integer;
    .restart local v19    # "halSessionPtr":Ljava/lang/Long;
    .restart local v22    # "callingTgid":I
    :catch_6
    move-exception v0

    move/from16 v3, v22

    .end local v22    # "callingTgid":I
    .restart local v3    # "callingTgid":I
    goto :goto_8

    .line 1438
    .end local v3    # "callingTgid":I
    .restart local v22    # "callingTgid":I
    :catch_7
    move-exception v0

    move-wide/from16 v20, v3

    move/from16 v3, v22

    move/from16 v22, v2

    .end local v22    # "callingTgid":I
    .restart local v3    # "callingTgid":I
    goto :goto_9

    .line 1440
    :goto_8
    nop

    .line 1441
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_a
    const-string v4, "createHintSessionWithConfig failed: "

    move-object/from16 p2, v0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .local p2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move/from16 v22, v2

    .end local v2    # "callingUid":I
    .local v22, "callingUid":I
    :try_start_b
    const-string v2, "createHintSessionWithConfig failed: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    invoke-virtual/range {p2 .. p2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "callingTgid":I
    .end local v5    # "tids":[I
    .end local v6    # "durationNanos":J
    .end local v8    # "tag":I
    .end local v13    # "isGraphicsPipeline":Z
    .end local v14    # "isAutoTimed":Z
    .end local v15    # "identity":J
    .end local v22    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p3    # "creationConfig":Landroid/os/SessionCreationConfig;
    .end local p4    # "config":Landroid/hardware/power/SessionConfig;
    throw v0

    .line 1530
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    .end local v19    # "halSessionPtr":Ljava/lang/Long;
    .end local p2    # "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "callingTgid":I
    .restart local v5    # "tids":[I
    .restart local v6    # "durationNanos":J
    .restart local v8    # "tag":I
    .restart local v13    # "isGraphicsPipeline":Z
    .restart local v14    # "isAutoTimed":Z
    .restart local v15    # "identity":J
    .restart local v22    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p3    # "creationConfig":Landroid/os/SessionCreationConfig;
    .restart local p4    # "config":Landroid/hardware/power/SessionConfig;
    :catchall_6
    move-exception v0

    move/from16 v24, v3

    move-wide v9, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move/from16 v2, v22

    move-object/from16 v6, p1

    move-object v14, v1

    goto/16 :goto_1d

    .end local v22    # "callingUid":I
    .restart local v2    # "callingUid":I
    :catchall_7
    move-exception v0

    move/from16 v22, v2

    move/from16 v24, v3

    move-wide v9, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object/from16 v6, p1

    move-object v14, v1

    .end local v2    # "callingUid":I
    .restart local v22    # "callingUid":I
    goto/16 :goto_1d

    .line 1438
    .end local v3    # "callingTgid":I
    .restart local v2    # "callingUid":I
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v11    # "invalidTid":Ljava/lang/Integer;
    .restart local v19    # "halSessionPtr":Ljava/lang/Long;
    .local v22, "callingTgid":I
    :catch_8
    move-exception v0

    move-wide/from16 v20, v3

    move/from16 v3, v22

    move/from16 v22, v2

    .end local v2    # "callingUid":I
    .restart local v3    # "callingTgid":I
    .local v22, "callingUid":I
    :goto_9
    nop

    .line 1439
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v2, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmConfigCreationSupport(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 1444
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_a

    .line 1434
    .end local v3    # "callingTgid":I
    .restart local v2    # "callingUid":I
    .local v22, "callingTgid":I
    :cond_a
    move-wide/from16 v20, v3

    move/from16 v3, v22

    const/4 v4, 0x0

    move/from16 v22, v2

    .line 1447
    .end local v2    # "callingUid":I
    .restart local v3    # "callingTgid":I
    .local v22, "callingUid":I
    :goto_a
    if-nez v19, :cond_b

    .line 1449
    :try_start_c
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    move/from16 v17, v4

    move/from16 v4, v22

    .end local v22    # "callingUid":I
    .restart local v4    # "callingUid":I
    :try_start_d
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCreateHintSession(II[IJ)J

    move-result-wide v22
    :try_end_d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    move/from16 v24, v3

    move v2, v4

    .end local v3    # "callingTgid":I
    .end local v4    # "callingUid":I
    .restart local v2    # "callingUid":I
    .local v24, "callingTgid":I
    :try_start_e
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move-object/from16 v19, v0

    .line 1459
    move-object/from16 v3, v19

    goto/16 :goto_d

    .line 1530
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    .end local v19    # "halSessionPtr":Ljava/lang/Long;
    :catchall_8
    move-exception v0

    move-wide v9, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object/from16 v6, p1

    move-object v14, v1

    goto/16 :goto_1d

    .line 1455
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v11    # "invalidTid":Ljava/lang/Integer;
    .restart local v19    # "halSessionPtr":Ljava/lang/Long;
    :catch_9
    move-exception v0

    goto :goto_b

    .line 1451
    :catch_a
    move-exception v0

    goto/16 :goto_c

    .line 1530
    .end local v2    # "callingUid":I
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    .end local v19    # "halSessionPtr":Ljava/lang/Long;
    .end local v24    # "callingTgid":I
    .restart local v3    # "callingTgid":I
    .restart local v4    # "callingUid":I
    :catchall_9
    move-exception v0

    move/from16 v24, v3

    move v2, v4

    move-wide v9, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object/from16 v6, p1

    move-object v14, v1

    .end local v3    # "callingTgid":I
    .end local v4    # "callingUid":I
    .restart local v2    # "callingUid":I
    .restart local v24    # "callingTgid":I
    goto/16 :goto_1d

    .line 1455
    .end local v2    # "callingUid":I
    .end local v24    # "callingTgid":I
    .restart local v3    # "callingTgid":I
    .restart local v4    # "callingUid":I
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v11    # "invalidTid":Ljava/lang/Integer;
    .restart local v19    # "halSessionPtr":Ljava/lang/Long;
    :catch_b
    move-exception v0

    move/from16 v24, v3

    move v2, v4

    .end local v3    # "callingTgid":I
    .end local v4    # "callingUid":I
    .restart local v2    # "callingUid":I
    .restart local v24    # "callingTgid":I
    goto :goto_b

    .line 1451
    .end local v2    # "callingUid":I
    .end local v24    # "callingTgid":I
    .restart local v3    # "callingTgid":I
    .restart local v4    # "callingUid":I
    :catch_c
    move-exception v0

    move/from16 v24, v3

    move v2, v4

    .end local v3    # "callingTgid":I
    .end local v4    # "callingUid":I
    .restart local v2    # "callingUid":I
    .restart local v24    # "callingTgid":I
    goto :goto_c

    .line 1530
    .end local v2    # "callingUid":I
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    .end local v19    # "halSessionPtr":Ljava/lang/Long;
    .end local v24    # "callingTgid":I
    .restart local v3    # "callingTgid":I
    .restart local v22    # "callingUid":I
    :catchall_a
    move-exception v0

    move/from16 v24, v3

    move/from16 v2, v22

    move-wide v9, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object/from16 v6, p1

    move-object v14, v1

    .end local v3    # "callingTgid":I
    .end local v22    # "callingUid":I
    .restart local v2    # "callingUid":I
    .restart local v24    # "callingTgid":I
    goto/16 :goto_1d

    .line 1455
    .end local v2    # "callingUid":I
    .end local v24    # "callingTgid":I
    .restart local v3    # "callingTgid":I
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v11    # "invalidTid":Ljava/lang/Integer;
    .restart local v19    # "halSessionPtr":Ljava/lang/Long;
    .restart local v22    # "callingUid":I
    :catch_d
    move-exception v0

    move/from16 v24, v3

    move/from16 v2, v22

    .end local v3    # "callingTgid":I
    .end local v22    # "callingUid":I
    .restart local v2    # "callingUid":I
    .restart local v24    # "callingTgid":I
    goto :goto_b

    .line 1451
    .end local v2    # "callingUid":I
    .end local v24    # "callingTgid":I
    .restart local v3    # "callingTgid":I
    .restart local v22    # "callingUid":I
    :catch_e
    move-exception v0

    move/from16 v24, v3

    move/from16 v2, v22

    .end local v3    # "callingTgid":I
    .end local v22    # "callingUid":I
    .restart local v2    # "callingUid":I
    .restart local v24    # "callingTgid":I
    goto :goto_c

    .line 1455
    :goto_b
    nop

    .line 1456
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_f
    const-string v3, "createHintSession failed: "

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p2, v0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local p2    # "e":Ljava/lang/IllegalStateException;
    const-string v0, "createHintSession failed: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    invoke-virtual/range {p2 .. p2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "callingUid":I
    .end local v5    # "tids":[I
    .end local v6    # "durationNanos":J
    .end local v8    # "tag":I
    .end local v13    # "isGraphicsPipeline":Z
    .end local v14    # "isAutoTimed":Z
    .end local v15    # "identity":J
    .end local v24    # "callingTgid":I
    .end local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p3    # "creationConfig":Landroid/os/SessionCreationConfig;
    .end local p4    # "config":Landroid/hardware/power/SessionConfig;
    throw v3

    .line 1451
    .end local p2    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "callingUid":I
    .restart local v5    # "tids":[I
    .restart local v6    # "durationNanos":J
    .restart local v8    # "tag":I
    .restart local v13    # "isGraphicsPipeline":Z
    .restart local v14    # "isAutoTimed":Z
    .restart local v15    # "identity":J
    .restart local v24    # "callingTgid":I
    .restart local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p3    # "creationConfig":Landroid/os/SessionCreationConfig;
    .restart local p4    # "config":Landroid/hardware/power/SessionConfig;
    :goto_c
    nop

    .line 1452
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v3, "createHintSession unsupported: "

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p2, v0

    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    .local p2, "e":Ljava/lang/UnsupportedOperationException;
    const-string v0, "createHintSession unsupported: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    invoke-virtual/range {p2 .. p2}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v2    # "callingUid":I
    .end local v5    # "tids":[I
    .end local v6    # "durationNanos":J
    .end local v8    # "tag":I
    .end local v13    # "isGraphicsPipeline":Z
    .end local v14    # "isAutoTimed":Z
    .end local v15    # "identity":J
    .end local v24    # "callingTgid":I
    .end local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p3    # "creationConfig":Landroid/os/SessionCreationConfig;
    .end local p4    # "config":Landroid/hardware/power/SessionConfig;
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 1447
    .end local p2    # "e":Ljava/lang/UnsupportedOperationException;
    .restart local v3    # "callingTgid":I
    .restart local v5    # "tids":[I
    .restart local v6    # "durationNanos":J
    .restart local v8    # "tag":I
    .restart local v13    # "isGraphicsPipeline":Z
    .restart local v14    # "isAutoTimed":Z
    .restart local v15    # "identity":J
    .restart local v22    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p3    # "creationConfig":Landroid/os/SessionCreationConfig;
    .restart local p4    # "config":Landroid/hardware/power/SessionConfig;
    :cond_b
    move/from16 v24, v3

    move/from16 v17, v4

    move/from16 v2, v22

    .end local v3    # "callingTgid":I
    .end local v22    # "callingUid":I
    .restart local v2    # "callingUid":I
    .restart local v24    # "callingTgid":I
    move-object/from16 v3, v19

    .line 1462
    .end local v19    # "halSessionPtr":Ljava/lang/Long;
    .local v3, "halSessionPtr":Ljava/lang/Long;
    :goto_d
    nop

    .line 1463
    :try_start_10
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTidsLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1f

    .line 1464
    :try_start_11
    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_23

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_c

    .line 1465
    move/from16 v22, v2

    .end local v2    # "callingUid":I
    .restart local v22    # "callingUid":I
    :try_start_12
    iget-object v2, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTids(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v10, v0}, Landroid/util/IntArray;->get(I)I

    move-result v19
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    move-object/from16 p2, v5

    .end local v5    # "tids":[I
    .local p2, "tids":[I
    :try_start_13
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    move-wide/from16 v25, v6

    .end local v6    # "durationNanos":J
    .local v25, "durationNanos":J
    :try_start_14
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    iget-object v2, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTids(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v10, v0}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 1464
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v5, p2

    move/from16 v2, v22

    move-wide/from16 v6, v25

    goto :goto_e

    .line 1468
    .end local v0    # "i":I
    :catchall_b
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v19, v3

    move-object/from16 v21, v10

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move/from16 v2, v22

    move-wide/from16 v9, v25

    move-object v14, v1

    move-object v15, v11

    goto/16 :goto_1c

    .end local v25    # "durationNanos":J
    .restart local v6    # "durationNanos":J
    :catchall_c
    move-exception v0

    move-wide/from16 v25, v6

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v19, v3

    move-object/from16 v21, v10

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move/from16 v2, v22

    move-wide/from16 v9, v25

    move-object v14, v1

    move-object v15, v11

    .end local v6    # "durationNanos":J
    .restart local v25    # "durationNanos":J
    goto/16 :goto_1c

    .end local v25    # "durationNanos":J
    .end local p2    # "tids":[I
    .restart local v5    # "tids":[I
    .restart local v6    # "durationNanos":J
    :catchall_d
    move-exception v0

    move-object/from16 p2, v5

    move-wide/from16 v25, v6

    move-object/from16 v6, p1

    move-object/from16 v19, v3

    move-object/from16 v21, v10

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move/from16 v2, v22

    move-wide/from16 v9, v25

    move-object v14, v1

    move-object v15, v11

    .end local v5    # "tids":[I
    .end local v6    # "durationNanos":J
    .restart local v25    # "durationNanos":J
    .restart local p2    # "tids":[I
    goto/16 :goto_1c

    .line 1464
    .end local v22    # "callingUid":I
    .end local v25    # "durationNanos":J
    .end local p2    # "tids":[I
    .restart local v0    # "i":I
    .restart local v2    # "callingUid":I
    .restart local v5    # "tids":[I
    .restart local v6    # "durationNanos":J
    :cond_c
    move/from16 v22, v2

    move-object/from16 p2, v5

    move-wide/from16 v25, v6

    .line 1468
    .end local v0    # "i":I
    .end local v2    # "callingUid":I
    .end local v5    # "tids":[I
    .end local v6    # "durationNanos":J
    .restart local v22    # "callingUid":I
    .restart local v25    # "durationNanos":J
    .restart local p2    # "tids":[I
    :try_start_15
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_22

    .line 1471
    :try_start_16
    iget-wide v4, v9, Landroid/hardware/power/SessionConfig;->id:J
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_21

    cmp-long v0, v4, v20

    if-eqz v0, :cond_d

    :try_start_17
    iget-wide v4, v9, Landroid/hardware/power/SessionConfig;->id:J
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    goto :goto_f

    .line 1530
    .end local v3    # "halSessionPtr":Ljava/lang/Long;
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    :catchall_e
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move/from16 v2, v22

    move-wide/from16 v9, v25

    move-object v14, v1

    goto/16 :goto_1d

    .line 1471
    .restart local v3    # "halSessionPtr":Ljava/lang/Long;
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v11    # "invalidTid":Ljava/lang/Integer;
    :cond_d
    :try_start_18
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_21

    :goto_f
    nop

    .line 1472
    .local v4, "sessionIdForTracing":J
    move-object/from16 v7, p2

    move-object/from16 v19, v3

    move-wide v3, v4

    move/from16 v2, v22

    move-wide/from16 v5, v25

    .end local v4    # "sessionIdForTracing":J
    .end local v22    # "callingUid":I
    .end local v25    # "durationNanos":J
    .end local p2    # "tids":[I
    .restart local v2    # "callingUid":I
    .local v3, "sessionIdForTracing":J
    .local v5, "durationNanos":J
    .local v7, "tids":[I
    .restart local v19    # "halSessionPtr":Ljava/lang/Long;
    :try_start_19
    invoke-direct/range {v1 .. v8}, Lcom/android/server/power/hint/HintManagerService$BinderService;->logPerformanceHintSessionAtom(IJJ[II)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_20

    move-wide/from16 v22, v5

    move-object v5, v7

    move-wide/from16 v6, v22

    move-wide/from16 v22, v3

    .line 1475
    .end local v3    # "sessionIdForTracing":J
    .end local v7    # "tids":[I
    .local v5, "tids":[I
    .restart local v6    # "durationNanos":J
    .local v22, "sessionIdForTracing":J
    :try_start_1a
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionSnapshotMapLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1f

    .line 1477
    :try_start_1b
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionSnapshotMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1d

    move/from16 p2, v2

    .end local v2    # "callingUid":I
    .local p2, "callingUid":I
    :try_start_1c
    new-instance v2, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v4, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1478
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/hint/HintManagerService$BinderService;)V

    invoke-virtual {v0, v2, v4}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    array-length v2, v5

    .line 1479
    invoke-virtual {v0, v2, v6, v7}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->updateUponSessionCreation(IJ)V

    .line 1480
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    .line 1481
    const/16 v25, 0x0

    .line 1482
    .local v25, "hs":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    :try_start_1d
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1b

    .line 1483
    const/4 v0, 0x0

    .line 1484
    .local v0, "configId":Ljava/lang/Integer;
    :try_start_1e
    iget-wide v2, v9, Landroid/hardware/power/SessionConfig;->id:J
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_19

    cmp-long v2, v2, v20

    if-eqz v2, :cond_e

    .line 1485
    :try_start_1f
    new-instance v2, Ljava/lang/Integer;

    iget-wide v3, v9, Landroid/hardware/power/SessionConfig;->id:J

    long-to-int v3, v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    move-object v0, v2

    goto :goto_10

    .line 1502
    .end local v0    # "configId":Ljava/lang/Integer;
    :catchall_f
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v21, v10

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object v14, v1

    move-wide v9, v6

    move-object v15, v11

    move-object/from16 v6, p1

    goto/16 :goto_1a

    .line 1487
    .restart local v0    # "configId":Ljava/lang/Integer;
    :cond_e
    :goto_10
    move-object v2, v11

    move-object v11, v0

    .end local v0    # "configId":Ljava/lang/Integer;
    .local v2, "invalidTid":Ljava/lang/Integer;
    .local v11, "configId":Ljava/lang/Integer;
    :try_start_20
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_18

    move-object v3, v1

    :try_start_21
    iget-object v1, v3, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_17

    .line 1488
    move-object v4, v10

    move-wide v9, v6

    move v6, v8

    .end local v8    # "tag":I
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .local v4, "nonIsolated":Landroid/util/IntArray;
    .local v6, "tag":I
    .local v9, "durationNanos":J
    :try_start_22
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v7
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_16

    move-object/from16 v21, v4

    move v4, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object/from16 v6, p1

    move-object v15, v2

    move-object v14, v3

    move/from16 v3, v24

    move/from16 v2, p2

    .end local v6    # "tag":I
    .end local v14    # "isAutoTimed":Z
    .end local v24    # "callingTgid":I
    .end local p2    # "callingUid":I
    .local v2, "callingUid":I
    .local v3, "callingTgid":I
    .local v4, "tag":I
    .local v15, "invalidTid":Ljava/lang/Integer;
    .local v20, "isAutoTimed":Z
    .local v21, "nonIsolated":Landroid/util/IntArray;
    .local v27, "identity":J
    :try_start_23
    invoke-direct/range {v0 .. v11}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;-><init>(Lcom/android/server/power/hint/HintManagerService;III[ILandroid/os/IBinder;JJLjava/lang/Integer;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_15

    move v1, v3

    move v8, v4

    .end local v3    # "callingTgid":I
    .end local v4    # "tag":I
    .local v1, "callingTgid":I
    .restart local v8    # "tag":I
    move-object v3, v0

    .line 1489
    .end local v25    # "hs":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    .local v3, "hs":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    :try_start_24
    iget-object v0, v14, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 1490
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_14

    .line 1491
    .local v0, "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    if-nez v0, :cond_f

    .line 1492
    :try_start_25
    new-instance v4, Landroid/util/ArrayMap;

    move/from16 v7, v18

    invoke-direct {v4, v7}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v0, v4

    .line 1493
    iget-object v4, v14, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v4}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_10

    goto :goto_11

    .line 1502
    .end local v0    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    .end local v11    # "configId":Ljava/lang/Integer;
    :catchall_10
    move-exception v0

    move/from16 v24, v1

    move-object/from16 v25, v3

    goto/16 :goto_1a

    .line 1495
    .restart local v0    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    .restart local v11    # "configId":Ljava/lang/Integer;
    :cond_f
    :goto_11
    :try_start_26
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_14

    .line 1496
    .local v4, "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    if-nez v4, :cond_10

    .line 1497
    :try_start_27
    new-instance v7, Landroid/util/ArraySet;

    move-object/from16 p2, v4

    const/4 v4, 0x1

    .end local v4    # "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .local p2, "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    invoke-direct {v7, v4}, Landroid/util/ArraySet;-><init>(I)V

    move-object v4, v7

    .line 1498
    .end local p2    # "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .restart local v4    # "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    invoke-virtual {v0, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    goto :goto_12

    .line 1496
    :cond_10
    move-object/from16 p2, v4

    .line 1500
    :goto_12
    :try_start_28
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1501
    iget-object v7, v14, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    move-object/from16 v16, v0

    .end local v0    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    .local v16, "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    iget-object v0, v14, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmUsesFmq(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_14

    if-nez v0, :cond_11

    :try_start_29
    iget-object v0, v14, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/hint/HintManagerService;->hasChannel(II)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    if-eqz v0, :cond_12

    :cond_11
    goto :goto_13

    :cond_12
    move/from16 v0, v17

    goto :goto_14

    :goto_13
    const/4 v0, 0x1

    :goto_14
    :try_start_2a
    invoke-static {v7, v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fputmUsesFmq(Lcom/android/server/power/hint/HintManagerService;Z)V

    .line 1502
    .end local v4    # "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .end local v11    # "configId":Ljava/lang/Integer;
    .end local v16    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    monitor-exit v26
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_14

    .line 1504
    nop

    .line 1505
    :try_start_2b
    iget-object v0, v12, Landroid/os/SessionCreationConfig;->modesToEnable:[I

    if-eqz v0, :cond_14

    .line 1506
    iget-object v0, v12, Landroid/os/SessionCreationConfig;->modesToEnable:[I

    array-length v4, v0

    move/from16 v7, v17

    :goto_15
    if-ge v7, v4, :cond_13

    aget v11, v0, v7
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_12

    .line 1507
    .local v11, "sessionMode":I
    move/from16 v24, v1

    const/4 v1, 0x1

    .end local v1    # "callingTgid":I
    .restart local v24    # "callingTgid":I
    :try_start_2c
    invoke-virtual {v3, v11, v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->setMode(IZ)V

    .line 1506
    .end local v11    # "sessionMode":I
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v24

    goto :goto_15

    .line 1530
    .end local v3    # "hs":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    .end local v15    # "invalidTid":Ljava/lang/Integer;
    .end local v19    # "halSessionPtr":Ljava/lang/Long;
    .end local v21    # "nonIsolated":Landroid/util/IntArray;
    .end local v22    # "sessionIdForTracing":J
    :catchall_11
    move-exception v0

    goto/16 :goto_1d

    .end local v24    # "callingTgid":I
    .restart local v1    # "callingTgid":I
    :catchall_12
    move-exception v0

    move/from16 v24, v1

    .end local v1    # "callingTgid":I
    .restart local v24    # "callingTgid":I
    goto/16 :goto_1d

    .line 1506
    .end local v24    # "callingTgid":I
    .restart local v1    # "callingTgid":I
    .restart local v3    # "hs":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    .restart local v15    # "invalidTid":Ljava/lang/Integer;
    .restart local v19    # "halSessionPtr":Ljava/lang/Long;
    .restart local v21    # "nonIsolated":Landroid/util/IntArray;
    .restart local v22    # "sessionIdForTracing":J
    :cond_13
    move/from16 v24, v1

    .end local v1    # "callingTgid":I
    .restart local v24    # "callingTgid":I
    goto :goto_16

    .line 1505
    .end local v24    # "callingTgid":I
    .restart local v1    # "callingTgid":I
    :cond_14
    move/from16 v24, v1

    .line 1511
    .end local v1    # "callingTgid":I
    .restart local v24    # "callingTgid":I
    :goto_16
    iget-object v0, v12, Landroid/os/SessionCreationConfig;->layerTokens:[Landroid/os/IBinder;

    if-eqz v0, :cond_15

    iget-object v0, v12, Landroid/os/SessionCreationConfig;->layerTokens:[Landroid/os/IBinder;

    array-length v0, v0

    if-lez v0, :cond_15

    .line 1513
    iget-object v0, v12, Landroid/os/SessionCreationConfig;->layerTokens:[Landroid/os/IBinder;

    invoke-virtual {v3, v0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->associateToLayers([Landroid/os/IBinder;)V

    .line 1516
    :cond_15
    iget-object v0, v14, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmThreadsUsageObject(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_11

    .line 1517
    :try_start_2d
    iget-object v0, v14, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmThreadsUsageMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v7, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v4, v7}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 1518
    iget-object v0, v14, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmThreadsUsageMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1519
    .local v0, "threadsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    array-length v7, v5

    if-ge v4, v7, :cond_16

    .line 1520
    new-instance v7, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;

    aget v11, v5, v4

    invoke-direct {v7, v11, v13}, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;-><init>(IZ)V

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1519
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 1522
    .end local v0    # "threadsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;>;"
    .end local v4    # "i":I
    :catchall_13
    move-exception v0

    goto :goto_18

    .line 1519
    .restart local v0    # "threadsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;>;"
    .restart local v4    # "i":I
    :cond_16
    nop

    .line 1522
    .end local v0    # "threadsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;>;"
    .end local v4    # "i":I
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_13

    .line 1525
    :try_start_2e
    new-instance v0, Landroid/os/IHintManager$SessionCreationReturn;

    invoke-direct {v0}, Landroid/os/IHintManager$SessionCreationReturn;-><init>()V

    .line 1526
    .local v0, "out":Landroid/os/IHintManager$SessionCreationReturn;
    iget-object v1, v14, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1, v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mtooManyPipelineThreads(Lcom/android/server/power/hint/HintManagerService;I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/os/IHintManager$SessionCreationReturn;->pipelineThreadLimitExceeded:Z

    .line 1527
    iput-object v3, v0, Landroid/os/IHintManager$SessionCreationReturn;->session:Landroid/os/IHintSession;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_11

    .line 1528
    nop

    .line 1530
    invoke-static/range {v27 .. v28}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1528
    return-object v0

    .line 1522
    .end local v0    # "out":Landroid/os/IHintManager$SessionCreationReturn;
    :goto_18
    :try_start_2f
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_13

    .end local v2    # "callingUid":I
    .end local v5    # "tids":[I
    .end local v8    # "tag":I
    .end local v9    # "durationNanos":J
    .end local v13    # "isGraphicsPipeline":Z
    .end local v20    # "isAutoTimed":Z
    .end local v24    # "callingTgid":I
    .end local v27    # "identity":J
    .end local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p3    # "creationConfig":Landroid/os/SessionCreationConfig;
    .end local p4    # "config":Landroid/hardware/power/SessionConfig;
    :try_start_30
    throw v0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_11

    .line 1502
    .restart local v1    # "callingTgid":I
    .restart local v2    # "callingUid":I
    .restart local v5    # "tids":[I
    .restart local v8    # "tag":I
    .restart local v9    # "durationNanos":J
    .restart local v13    # "isGraphicsPipeline":Z
    .restart local v20    # "isAutoTimed":Z
    .restart local v27    # "identity":J
    .restart local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p3    # "creationConfig":Landroid/os/SessionCreationConfig;
    .restart local p4    # "config":Landroid/hardware/power/SessionConfig;
    :catchall_14
    move-exception v0

    move/from16 v24, v1

    move-object/from16 v25, v3

    .end local v1    # "callingTgid":I
    .restart local v24    # "callingTgid":I
    goto :goto_1a

    .end local v8    # "tag":I
    .end local v24    # "callingTgid":I
    .local v3, "callingTgid":I
    .local v4, "tag":I
    .restart local v25    # "hs":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    :catchall_15
    move-exception v0

    move/from16 v24, v3

    move v8, v4

    .end local v3    # "callingTgid":I
    .end local v4    # "tag":I
    .restart local v8    # "tag":I
    .restart local v24    # "callingTgid":I
    goto :goto_1a

    .end local v8    # "tag":I
    .end local v20    # "isAutoTimed":Z
    .end local v21    # "nonIsolated":Landroid/util/IntArray;
    .end local v27    # "identity":J
    .local v2, "invalidTid":Ljava/lang/Integer;
    .local v4, "nonIsolated":Landroid/util/IntArray;
    .restart local v6    # "tag":I
    .restart local v14    # "isAutoTimed":Z
    .local v15, "identity":J
    .local p2, "callingUid":I
    :catchall_16
    move-exception v0

    move-object/from16 v21, v4

    move v8, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object/from16 v6, p1

    move-object v15, v2

    move-object v14, v3

    move/from16 v2, p2

    .end local v4    # "nonIsolated":Landroid/util/IntArray;
    .end local v6    # "tag":I
    .end local v14    # "isAutoTimed":Z
    .end local p2    # "callingUid":I
    .local v2, "callingUid":I
    .restart local v8    # "tag":I
    .local v15, "invalidTid":Ljava/lang/Integer;
    .restart local v20    # "isAutoTimed":Z
    .restart local v21    # "nonIsolated":Landroid/util/IntArray;
    .restart local v27    # "identity":J
    goto :goto_1a

    .end local v9    # "durationNanos":J
    .end local v20    # "isAutoTimed":Z
    .end local v21    # "nonIsolated":Landroid/util/IntArray;
    .end local v27    # "identity":J
    .local v2, "invalidTid":Ljava/lang/Integer;
    .local v6, "durationNanos":J
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v14    # "isAutoTimed":Z
    .local v15, "identity":J
    .restart local p2    # "callingUid":I
    :catchall_17
    move-exception v0

    move-object/from16 v21, v10

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object v15, v2

    move-object v14, v3

    :goto_19
    move-wide v9, v6

    move-object/from16 v6, p1

    move/from16 v2, p2

    .end local v6    # "durationNanos":J
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v14    # "isAutoTimed":Z
    .end local p2    # "callingUid":I
    .local v2, "callingUid":I
    .restart local v9    # "durationNanos":J
    .local v15, "invalidTid":Ljava/lang/Integer;
    .restart local v20    # "isAutoTimed":Z
    .restart local v21    # "nonIsolated":Landroid/util/IntArray;
    .restart local v27    # "identity":J
    goto :goto_1a

    .end local v9    # "durationNanos":J
    .end local v20    # "isAutoTimed":Z
    .end local v21    # "nonIsolated":Landroid/util/IntArray;
    .end local v27    # "identity":J
    .local v2, "invalidTid":Ljava/lang/Integer;
    .restart local v6    # "durationNanos":J
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v14    # "isAutoTimed":Z
    .local v15, "identity":J
    .restart local p2    # "callingUid":I
    :catchall_18
    move-exception v0

    move-object/from16 v21, v10

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object v14, v1

    move-object v15, v2

    goto :goto_19

    .end local v2    # "invalidTid":Ljava/lang/Integer;
    .local v11, "invalidTid":Ljava/lang/Integer;
    :catchall_19
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v21, v10

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object v14, v1

    move-wide v9, v6

    move-object v15, v11

    move-object/from16 v6, p1

    .end local v6    # "durationNanos":J
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    .end local v14    # "isAutoTimed":Z
    .end local p2    # "callingUid":I
    .local v2, "callingUid":I
    .restart local v9    # "durationNanos":J
    .local v15, "invalidTid":Ljava/lang/Integer;
    .restart local v20    # "isAutoTimed":Z
    .restart local v21    # "nonIsolated":Landroid/util/IntArray;
    .restart local v27    # "identity":J
    :goto_1a
    :try_start_31
    monitor-exit v26
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1a

    .end local v2    # "callingUid":I
    .end local v5    # "tids":[I
    .end local v8    # "tag":I
    .end local v9    # "durationNanos":J
    .end local v13    # "isGraphicsPipeline":Z
    .end local v20    # "isAutoTimed":Z
    .end local v24    # "callingTgid":I
    .end local v27    # "identity":J
    .end local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p3    # "creationConfig":Landroid/os/SessionCreationConfig;
    .end local p4    # "config":Landroid/hardware/power/SessionConfig;
    :try_start_32
    throw v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_11

    .restart local v2    # "callingUid":I
    .restart local v5    # "tids":[I
    .restart local v8    # "tag":I
    .restart local v9    # "durationNanos":J
    .restart local v13    # "isGraphicsPipeline":Z
    .restart local v20    # "isAutoTimed":Z
    .restart local v24    # "callingTgid":I
    .restart local v27    # "identity":J
    .restart local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p3    # "creationConfig":Landroid/os/SessionCreationConfig;
    .restart local p4    # "config":Landroid/hardware/power/SessionConfig;
    :catchall_1a
    move-exception v0

    goto :goto_1a

    .line 1530
    .end local v2    # "callingUid":I
    .end local v9    # "durationNanos":J
    .end local v19    # "halSessionPtr":Ljava/lang/Long;
    .end local v20    # "isAutoTimed":Z
    .end local v21    # "nonIsolated":Landroid/util/IntArray;
    .end local v22    # "sessionIdForTracing":J
    .end local v25    # "hs":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    .end local v27    # "identity":J
    .restart local v6    # "durationNanos":J
    .restart local v14    # "isAutoTimed":Z
    .local v15, "identity":J
    .restart local p2    # "callingUid":I
    :catchall_1b
    move-exception v0

    move/from16 v2, p2

    move-wide v9, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object/from16 v6, p1

    move-object v14, v1

    .end local v6    # "durationNanos":J
    .end local v14    # "isAutoTimed":Z
    .end local v15    # "identity":J
    .end local p2    # "callingUid":I
    .restart local v2    # "callingUid":I
    .restart local v9    # "durationNanos":J
    .restart local v20    # "isAutoTimed":Z
    .restart local v27    # "identity":J
    goto/16 :goto_1d

    .line 1480
    .end local v2    # "callingUid":I
    .end local v9    # "durationNanos":J
    .end local v20    # "isAutoTimed":Z
    .end local v27    # "identity":J
    .restart local v6    # "durationNanos":J
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v11    # "invalidTid":Ljava/lang/Integer;
    .restart local v14    # "isAutoTimed":Z
    .restart local v15    # "identity":J
    .restart local v19    # "halSessionPtr":Ljava/lang/Long;
    .restart local v22    # "sessionIdForTracing":J
    .restart local p2    # "callingUid":I
    :catchall_1c
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v21, v10

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object v14, v1

    move-wide v9, v6

    move-object v15, v11

    move-object/from16 v6, p1

    .end local v6    # "durationNanos":J
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    .end local v14    # "isAutoTimed":Z
    .end local p2    # "callingUid":I
    .restart local v2    # "callingUid":I
    .restart local v9    # "durationNanos":J
    .local v15, "invalidTid":Ljava/lang/Integer;
    .restart local v20    # "isAutoTimed":Z
    .restart local v21    # "nonIsolated":Landroid/util/IntArray;
    .restart local v27    # "identity":J
    goto :goto_1b

    .end local v9    # "durationNanos":J
    .end local v20    # "isAutoTimed":Z
    .end local v21    # "nonIsolated":Landroid/util/IntArray;
    .end local v27    # "identity":J
    .restart local v6    # "durationNanos":J
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v11    # "invalidTid":Ljava/lang/Integer;
    .restart local v14    # "isAutoTimed":Z
    .local v15, "identity":J
    :catchall_1d
    move-exception v0

    move-object/from16 v21, v10

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object v14, v1

    move-wide v9, v6

    move-object v15, v11

    move-object/from16 v6, p1

    .end local v6    # "durationNanos":J
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    .end local v14    # "isAutoTimed":Z
    .restart local v9    # "durationNanos":J
    .local v15, "invalidTid":Ljava/lang/Integer;
    .restart local v20    # "isAutoTimed":Z
    .restart local v21    # "nonIsolated":Landroid/util/IntArray;
    .restart local v27    # "identity":J
    :goto_1b
    :try_start_33
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1e

    .end local v2    # "callingUid":I
    .end local v5    # "tids":[I
    .end local v8    # "tag":I
    .end local v9    # "durationNanos":J
    .end local v13    # "isGraphicsPipeline":Z
    .end local v20    # "isAutoTimed":Z
    .end local v24    # "callingTgid":I
    .end local v27    # "identity":J
    .end local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p3    # "creationConfig":Landroid/os/SessionCreationConfig;
    .end local p4    # "config":Landroid/hardware/power/SessionConfig;
    :try_start_34
    throw v0
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_11

    .restart local v2    # "callingUid":I
    .restart local v5    # "tids":[I
    .restart local v8    # "tag":I
    .restart local v9    # "durationNanos":J
    .restart local v13    # "isGraphicsPipeline":Z
    .restart local v20    # "isAutoTimed":Z
    .restart local v24    # "callingTgid":I
    .restart local v27    # "identity":J
    .restart local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p3    # "creationConfig":Landroid/os/SessionCreationConfig;
    .restart local p4    # "config":Landroid/hardware/power/SessionConfig;
    :catchall_1e
    move-exception v0

    goto :goto_1b

    .line 1530
    .end local v9    # "durationNanos":J
    .end local v19    # "halSessionPtr":Ljava/lang/Long;
    .end local v20    # "isAutoTimed":Z
    .end local v21    # "nonIsolated":Landroid/util/IntArray;
    .end local v22    # "sessionIdForTracing":J
    .end local v27    # "identity":J
    .restart local v6    # "durationNanos":J
    .restart local v14    # "isAutoTimed":Z
    .local v15, "identity":J
    :catchall_1f
    move-exception v0

    move-wide v9, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object/from16 v6, p1

    move-object v14, v1

    .end local v6    # "durationNanos":J
    .end local v14    # "isAutoTimed":Z
    .end local v15    # "identity":J
    .restart local v9    # "durationNanos":J
    .restart local v20    # "isAutoTimed":Z
    .restart local v27    # "identity":J
    goto/16 :goto_1d

    .end local v9    # "durationNanos":J
    .end local v20    # "isAutoTimed":Z
    .end local v27    # "identity":J
    .local v5, "durationNanos":J
    .restart local v7    # "tids":[I
    .restart local v14    # "isAutoTimed":Z
    .restart local v15    # "identity":J
    :catchall_20
    move-exception v0

    move-wide v9, v5

    move-object v5, v7

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object/from16 v6, p1

    move-object v14, v1

    .end local v7    # "tids":[I
    .end local v14    # "isAutoTimed":Z
    .end local v15    # "identity":J
    .local v5, "tids":[I
    .restart local v9    # "durationNanos":J
    .restart local v20    # "isAutoTimed":Z
    .restart local v27    # "identity":J
    goto/16 :goto_1d

    .end local v2    # "callingUid":I
    .end local v5    # "tids":[I
    .end local v9    # "durationNanos":J
    .end local v20    # "isAutoTimed":Z
    .end local v27    # "identity":J
    .restart local v14    # "isAutoTimed":Z
    .restart local v15    # "identity":J
    .local v22, "callingUid":I
    .local v25, "durationNanos":J
    .local p2, "tids":[I
    :catchall_21
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move/from16 v2, v22

    move-wide/from16 v9, v25

    move-object v14, v1

    .end local v14    # "isAutoTimed":Z
    .end local v15    # "identity":J
    .end local v22    # "callingUid":I
    .end local v25    # "durationNanos":J
    .end local p2    # "tids":[I
    .restart local v2    # "callingUid":I
    .restart local v5    # "tids":[I
    .restart local v9    # "durationNanos":J
    .restart local v20    # "isAutoTimed":Z
    .restart local v27    # "identity":J
    goto/16 :goto_1d

    .line 1468
    .end local v2    # "callingUid":I
    .end local v5    # "tids":[I
    .end local v9    # "durationNanos":J
    .end local v20    # "isAutoTimed":Z
    .end local v27    # "identity":J
    .local v3, "halSessionPtr":Ljava/lang/Long;
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v11    # "invalidTid":Ljava/lang/Integer;
    .restart local v14    # "isAutoTimed":Z
    .restart local v15    # "identity":J
    .restart local v22    # "callingUid":I
    .restart local v25    # "durationNanos":J
    .restart local p2    # "tids":[I
    :catchall_22
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v19, v3

    move-object/from16 v21, v10

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move/from16 v2, v22

    move-wide/from16 v9, v25

    move-object v14, v1

    move-object v15, v11

    .end local v3    # "halSessionPtr":Ljava/lang/Long;
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    .end local v14    # "isAutoTimed":Z
    .end local v22    # "callingUid":I
    .end local v25    # "durationNanos":J
    .end local p2    # "tids":[I
    .restart local v2    # "callingUid":I
    .restart local v5    # "tids":[I
    .restart local v9    # "durationNanos":J
    .local v15, "invalidTid":Ljava/lang/Integer;
    .restart local v19    # "halSessionPtr":Ljava/lang/Long;
    .restart local v20    # "isAutoTimed":Z
    .restart local v21    # "nonIsolated":Landroid/util/IntArray;
    .restart local v27    # "identity":J
    goto :goto_1c

    .end local v9    # "durationNanos":J
    .end local v19    # "halSessionPtr":Ljava/lang/Long;
    .end local v20    # "isAutoTimed":Z
    .end local v21    # "nonIsolated":Landroid/util/IntArray;
    .end local v27    # "identity":J
    .restart local v3    # "halSessionPtr":Ljava/lang/Long;
    .restart local v6    # "durationNanos":J
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v11    # "invalidTid":Ljava/lang/Integer;
    .restart local v14    # "isAutoTimed":Z
    .local v15, "identity":J
    :catchall_23
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v10

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object v14, v1

    move-wide v9, v6

    move-object v15, v11

    move-object/from16 v6, p1

    .end local v3    # "halSessionPtr":Ljava/lang/Long;
    .end local v6    # "durationNanos":J
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    .end local v14    # "isAutoTimed":Z
    .restart local v9    # "durationNanos":J
    .local v15, "invalidTid":Ljava/lang/Integer;
    .restart local v19    # "halSessionPtr":Ljava/lang/Long;
    .restart local v20    # "isAutoTimed":Z
    .restart local v21    # "nonIsolated":Landroid/util/IntArray;
    .restart local v27    # "identity":J
    :goto_1c
    :try_start_35
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_24

    .end local v2    # "callingUid":I
    .end local v5    # "tids":[I
    .end local v8    # "tag":I
    .end local v9    # "durationNanos":J
    .end local v13    # "isGraphicsPipeline":Z
    .end local v20    # "isAutoTimed":Z
    .end local v24    # "callingTgid":I
    .end local v27    # "identity":J
    .end local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p3    # "creationConfig":Landroid/os/SessionCreationConfig;
    .end local p4    # "config":Landroid/hardware/power/SessionConfig;
    :try_start_36
    throw v0
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_11

    .restart local v2    # "callingUid":I
    .restart local v5    # "tids":[I
    .restart local v8    # "tag":I
    .restart local v9    # "durationNanos":J
    .restart local v13    # "isGraphicsPipeline":Z
    .restart local v20    # "isAutoTimed":Z
    .restart local v24    # "callingTgid":I
    .restart local v27    # "identity":J
    .restart local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p3    # "creationConfig":Landroid/os/SessionCreationConfig;
    .restart local p4    # "config":Landroid/hardware/power/SessionConfig;
    :catchall_24
    move-exception v0

    goto :goto_1c

    .line 1530
    .end local v9    # "durationNanos":J
    .end local v19    # "halSessionPtr":Ljava/lang/Long;
    .end local v20    # "isAutoTimed":Z
    .end local v21    # "nonIsolated":Landroid/util/IntArray;
    .end local v24    # "callingTgid":I
    .end local v27    # "identity":J
    .restart local v6    # "durationNanos":J
    .restart local v14    # "isAutoTimed":Z
    .local v15, "identity":J
    .local v22, "callingTgid":I
    :catchall_25
    move-exception v0

    move-wide v9, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move/from16 v24, v22

    move-object/from16 v6, p1

    move-object v14, v1

    .end local v6    # "durationNanos":J
    .end local v14    # "isAutoTimed":Z
    .end local v15    # "identity":J
    .end local v22    # "callingTgid":I
    .restart local v9    # "durationNanos":J
    .restart local v20    # "isAutoTimed":Z
    .restart local v24    # "callingTgid":I
    .restart local v27    # "identity":J
    goto :goto_1d

    .end local v8    # "tag":I
    .end local v9    # "durationNanos":J
    .end local v20    # "isAutoTimed":Z
    .end local v24    # "callingTgid":I
    .end local v27    # "identity":J
    .restart local v6    # "durationNanos":J
    .restart local v14    # "isAutoTimed":Z
    .restart local v15    # "identity":J
    .restart local v22    # "callingTgid":I
    .local p2, "tag":I
    :catchall_26
    move-exception v0

    move/from16 v3, p2

    move-wide v9, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move/from16 v24, v22

    move-object/from16 v6, p1

    move-object v14, v1

    move v8, v3

    .end local v6    # "durationNanos":J
    .end local v14    # "isAutoTimed":Z
    .end local v15    # "identity":J
    .end local v22    # "callingTgid":I
    .restart local v9    # "durationNanos":J
    .restart local v20    # "isAutoTimed":Z
    .restart local v24    # "callingTgid":I
    .restart local v27    # "identity":J
    goto :goto_1d

    .line 1394
    .end local v9    # "durationNanos":J
    .end local v20    # "isAutoTimed":Z
    .end local v24    # "callingTgid":I
    .end local v27    # "identity":J
    .local v3, "callingTgid":I
    .restart local v6    # "durationNanos":J
    .restart local v10    # "nonIsolated":Landroid/util/IntArray;
    .restart local v11    # "invalidTid":Ljava/lang/Integer;
    .restart local v14    # "isAutoTimed":Z
    .restart local v15    # "identity":J
    :cond_17
    move/from16 v24, v3

    move-object/from16 v21, v10

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move/from16 v3, p2

    move-object v14, v1

    move-wide v9, v6

    move-object v15, v11

    move-object/from16 v6, p1

    .end local v3    # "callingTgid":I
    .end local v6    # "durationNanos":J
    .end local v10    # "nonIsolated":Landroid/util/IntArray;
    .end local v11    # "invalidTid":Ljava/lang/Integer;
    .end local v14    # "isAutoTimed":Z
    .restart local v9    # "durationNanos":J
    .local v15, "invalidTid":Ljava/lang/Integer;
    .restart local v20    # "isAutoTimed":Z
    .restart local v21    # "nonIsolated":Landroid/util/IntArray;
    .restart local v24    # "callingTgid":I
    .restart local v27    # "identity":J
    :try_start_37
    iget-object v0, v14, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0, v2, v5, v15}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mformatTidCheckErrMsg(Lcom/android/server/power/hint/HintManagerService;I[ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 1395
    .local v0, "errMsg":Ljava/lang/String;
    const-string v1, "HintManagerService"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "callingUid":I
    .end local v5    # "tids":[I
    .end local v9    # "durationNanos":J
    .end local v13    # "isGraphicsPipeline":Z
    .end local v20    # "isAutoTimed":Z
    .end local v24    # "callingTgid":I
    .end local v27    # "identity":J
    .end local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "tag":I
    .end local p3    # "creationConfig":Landroid/os/SessionCreationConfig;
    .end local p4    # "config":Landroid/hardware/power/SessionConfig;
    throw v1
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_27

    .line 1530
    .end local v0    # "errMsg":Ljava/lang/String;
    .end local v15    # "invalidTid":Ljava/lang/Integer;
    .end local v21    # "nonIsolated":Landroid/util/IntArray;
    .restart local v2    # "callingUid":I
    .restart local v5    # "tids":[I
    .restart local v9    # "durationNanos":J
    .restart local v13    # "isGraphicsPipeline":Z
    .restart local v20    # "isAutoTimed":Z
    .restart local v24    # "callingTgid":I
    .restart local v27    # "identity":J
    .restart local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "tag":I
    .restart local p3    # "creationConfig":Landroid/os/SessionCreationConfig;
    .restart local p4    # "config":Landroid/hardware/power/SessionConfig;
    :catchall_27
    move-exception v0

    move v8, v3

    goto :goto_1d

    .end local v9    # "durationNanos":J
    .end local v20    # "isAutoTimed":Z
    .end local v24    # "callingTgid":I
    .end local v27    # "identity":J
    .restart local v3    # "callingTgid":I
    .restart local v6    # "durationNanos":J
    .restart local v14    # "isAutoTimed":Z
    .local v15, "identity":J
    :catchall_28
    move-exception v0

    move/from16 v24, v3

    move-wide v9, v6

    move/from16 v20, v14

    move-wide/from16 v27, v15

    move-object/from16 v6, p1

    move/from16 v3, p2

    move-object v14, v1

    move v8, v3

    .end local v3    # "callingTgid":I
    .end local v6    # "durationNanos":J
    .end local v14    # "isAutoTimed":Z
    .end local v15    # "identity":J
    .end local p2    # "tag":I
    .restart local v8    # "tag":I
    .restart local v9    # "durationNanos":J
    .restart local v20    # "isAutoTimed":Z
    .restart local v24    # "callingTgid":I
    .restart local v27    # "identity":J
    :goto_1d
    invoke-static/range {v27 .. v28}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1531
    throw v0

    .line 1354
    .end local v2    # "callingUid":I
    .end local v5    # "tids":[I
    .end local v8    # "tag":I
    .end local v9    # "durationNanos":J
    .end local v13    # "isGraphicsPipeline":Z
    .end local v20    # "isAutoTimed":Z
    .end local v24    # "callingTgid":I
    .end local v27    # "identity":J
    .restart local p2    # "tag":I
    :cond_18
    move-object/from16 v6, p1

    move/from16 v3, p2

    move-object v14, v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "PowerHintSessions are not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1851
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "HintManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1852
    return-void

    .line 1854
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HintSessionPreferredRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-wide v1, v1, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1855
    const-string v0, "MaxGraphicsPipelineThreadsCount: 5"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hint Session Support: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$misHintSessionSupported(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1857
    const-string v0, "Active Sessions:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1858
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1859
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1861
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 1862
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 1863
    .local v2, "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1864
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 1865
    .local v4, "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1866
    const-string v6, "  Session:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1867
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    const-string v7, "    "

    invoke-static {v6, p2, v7}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->-$$Nest$mdump(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1865
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1871
    .end local v1    # "i":I
    .end local v2    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    .end local v3    # "j":I
    .end local v4    # "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .end local v5    # "k":I
    :catchall_0
    move-exception v1

    goto/16 :goto_9

    .line 1865
    .restart local v1    # "i":I
    .restart local v2    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    .restart local v3    # "j":I
    .restart local v4    # "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .restart local v5    # "k":I
    :cond_1
    nop

    .line 1863
    .end local v4    # "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .end local v5    # "k":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 1859
    .end local v2    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    .end local v3    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 1871
    .end local v1    # "i":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPU Headroom Supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1873
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v0, :cond_5

    .line 1874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPU Headroom Interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPU Headroom TID Max Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomMaxTidCnt(Lcom/android/server/power/hint/HintManagerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPU Headroom TID Max Count From HAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxTidCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPU Headroom Calculation Window Range: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1882
    :try_start_1
    new-instance v0, Landroid/os/CpuHeadroomParamsInternal;

    invoke-direct {v0}, Landroid/os/CpuHeadroomParamsInternal;-><init>()V

    .line 1883
    .local v0, "params":Landroid/os/CpuHeadroomParamsInternal;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/CpuHeadroomParamsInternal;->usesDeviceHeadroom:Z

    .line 1884
    invoke-virtual {p0, v0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->getCpuHeadroom(Landroid/os/CpuHeadroomParamsInternal;)Landroid/hardware/power/CpuHeadroomResult;

    move-result-object v1

    .line 1885
    .local v1, "ret":Landroid/hardware/power/CpuHeadroomResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPU headroom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    if-nez v1, :cond_4

    const-string v3, "N/A"

    goto :goto_3

    .line 1886
    .end local v0    # "params":Landroid/os/CpuHeadroomParamsInternal;
    .end local v1    # "ret":Landroid/hardware/power/CpuHeadroomResult;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1885
    .restart local v0    # "params":Landroid/os/CpuHeadroomParamsInternal;
    .restart local v1    # "ret":Landroid/hardware/power/CpuHeadroomResult;
    :cond_4
    invoke-virtual {v1}, Landroid/hardware/power/CpuHeadroomResult;->getGlobalHeadroom()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1889
    .end local v0    # "params":Landroid/os/CpuHeadroomParamsInternal;
    .end local v1    # "ret":Landroid/hardware/power/CpuHeadroomResult;
    goto :goto_5

    .line 1886
    :goto_4
    nop

    .line 1887
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HintManagerService"

    const-string v2, "Failed to dump CPU headroom"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1888
    const-string v1, "CPU headroom: N/A"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1891
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPU Headroom Supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1892
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz v0, :cond_7

    .line 1893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPU Headroom Interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinIntervalMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPU Headroom Calculation Window Range: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1898
    :try_start_2
    new-instance v0, Landroid/os/GpuHeadroomParamsInternal;

    invoke-direct {v0}, Landroid/os/GpuHeadroomParamsInternal;-><init>()V

    .line 1899
    .local v0, "params":Landroid/os/GpuHeadroomParamsInternal;
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmDefaultGpuHeadroomCalculationWindowMillis(Lcom/android/server/power/hint/HintManagerService;)I

    move-result v1

    iput v1, v0, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    .line 1900
    invoke-virtual {p0, v0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->getGpuHeadroom(Landroid/os/GpuHeadroomParamsInternal;)Landroid/hardware/power/GpuHeadroomResult;

    move-result-object v1

    .line 1901
    .local v1, "ret":Landroid/hardware/power/GpuHeadroomResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPU headroom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    if-nez v1, :cond_6

    const-string v3, "N/A"

    goto :goto_6

    .line 1902
    .end local v0    # "params":Landroid/os/GpuHeadroomParamsInternal;
    .end local v1    # "ret":Landroid/hardware/power/GpuHeadroomResult;
    :catch_1
    move-exception v0

    goto :goto_7

    .line 1901
    .restart local v0    # "params":Landroid/os/GpuHeadroomParamsInternal;
    .restart local v1    # "ret":Landroid/hardware/power/GpuHeadroomResult;
    :cond_6
    invoke-virtual {v1}, Landroid/hardware/power/GpuHeadroomResult;->getGlobalHeadroom()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1905
    .end local v0    # "params":Landroid/os/GpuHeadroomParamsInternal;
    .end local v1    # "ret":Landroid/hardware/power/GpuHeadroomResult;
    goto :goto_8

    .line 1902
    :goto_7
    nop

    .line 1903
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HintManagerService"

    const-string v2, "Failed to dump GPU headroom"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1904
    const-string v1, "GPU headroom: N/A"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1907
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_8
    return-void

    .line 1871
    :goto_9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getClientData()Landroid/os/IHintManager$HintManagerClientData;
    .locals 3

    .line 1840
    new-instance v0, Landroid/os/IHintManager$HintManagerClientData;

    invoke-direct {v0}, Landroid/os/IHintManager$HintManagerClientData;-><init>()V

    .line 1841
    .local v0, "out":Landroid/os/IHintManager$HintManagerClientData;
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-wide v1, v1, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    iput-wide v1, v0, Landroid/os/IHintManager$HintManagerClientData;->preferredRateNanos:J

    .line 1842
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->getMaxGraphicsPipelineThreadsCount()I

    move-result v1

    iput v1, v0, Landroid/os/IHintManager$HintManagerClientData;->maxGraphicsPipelineThreads:I

    .line 1843
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/IHintManager$HintManagerClientData;->maxCpuHeadroomThreads:I

    .line 1844
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPowerHalVersion(Lcom/android/server/power/hint/HintManagerService;)I

    move-result v1

    iput v1, v0, Landroid/os/IHintManager$HintManagerClientData;->powerHalVersion:I

    .line 1845
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    .line 1846
    return-object v0
.end method

.method public getCpuHeadroom(Landroid/os/CpuHeadroomParamsInternal;)Landroid/hardware/power/CpuHeadroomResult;
    .locals 12
    .param p1, "params"    # Landroid/os/CpuHeadroomParamsInternal;

    .line 1583
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v0, :cond_c

    .line 1586
    invoke-direct {p0, p1}, Lcom/android/server/power/hint/HintManagerService$BinderService;->checkCpuHeadroomParams(Landroid/os/CpuHeadroomParamsInternal;)V

    .line 1587
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1588
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1589
    .local v1, "pid":I
    new-instance v2, Landroid/hardware/power/CpuHeadroomParams;

    invoke-direct {v2}, Landroid/hardware/power/CpuHeadroomParams;-><init>()V

    .line 1590
    .local v2, "halParams":Landroid/hardware/power/CpuHeadroomParams;
    filled-new-array {v1}, [I

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/power/CpuHeadroomParams;->tids:[I

    .line 1591
    iget-byte v3, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    iput-byte v3, v2, Landroid/hardware/power/CpuHeadroomParams;->calculationType:B

    .line 1592
    iget v3, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    iput v3, v2, Landroid/hardware/power/CpuHeadroomParams;->calculationWindowMillis:I

    .line 1593
    iget-boolean v3, p1, Landroid/os/CpuHeadroomParamsInternal;->usesDeviceHeadroom:Z

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 1594
    new-array v3, v6, [I

    iput-object v3, v2, Landroid/hardware/power/CpuHeadroomParams;->tids:[I

    goto :goto_1

    .line 1595
    :cond_0
    iget-object v3, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length v3, v3

    if-lez v3, :cond_4

    .line 1596
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCheckHeadroomTid(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1597
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v3

    .line 1598
    .local v3, "tgid":I
    iget-object v7, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length v8, v7

    move v9, v6

    :goto_0
    nop

    if-ge v9, v8, :cond_2

    aget v10, v7, v9

    .line 1599
    .local v10, "tid":I
    invoke-static {v10}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v11

    if-ne v11, v3, :cond_1

    .line 1598
    .end local v10    # "tid":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1600
    .restart local v10    # "tid":I
    :cond_1
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t belong to the calling process with pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1606
    .end local v3    # "tgid":I
    .end local v10    # "tid":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCheckHeadroomAffinity(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length v3, v3

    if-le v3, v5, :cond_3

    .line 1607
    iget-object v3, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    invoke-direct {p0, v3}, Lcom/android/server/power/hint/HintManagerService$BinderService;->checkThreadAffinityForTids([I)V

    .line 1609
    :cond_3
    iget-object v3, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    iput-object v3, v2, Landroid/hardware/power/CpuHeadroomParams;->tids:[I

    .line 1611
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1612
    :try_start_0
    iget-object v7, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v7}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomCache(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/power/CpuHeadroomResult;

    .line 1613
    .local v7, "res":Landroid/hardware/power/CpuHeadroomResult;
    nop

    nop

    if-eqz v7, :cond_5

    monitor-exit v3

    return-object v7

    .line 1614
    .end local v7    # "res":Landroid/hardware/power/CpuHeadroomResult;
    :catchall_0
    move-exception v4

    goto/16 :goto_8

    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1615
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmEnforceCpuHeadroomUserModeCpuTimeCheck(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1617
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    nop

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/hint/HintManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    .line 1618
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    goto :goto_2

    :cond_6
    move v5, v6

    goto :goto_3

    :cond_7
    :goto_2
    nop

    :goto_3
    nop

    .line 1622
    .local v5, "shouldCheckUserModeCpuTime":Z
    const/4 v3, 0x0

    if-eqz v5, :cond_9

    .line 1623
    iget-object v4, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v4}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1624
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->checkPerUidUserModeCpuTimeElapsedLocked(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1625
    monitor-exit v4

    return-object v3

    .line 1627
    :catchall_1
    move-exception v3

    goto :goto_4

    :cond_8
    monitor-exit v4

    goto :goto_5

    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 1631
    :cond_9
    :goto_5
    :try_start_2
    iget-object v4, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v4}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPowerHal(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/IPower;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/hardware/power/IPower;->getCpuHeadroom(Landroid/hardware/power/CpuHeadroomParams;)Landroid/hardware/power/CpuHeadroomResult;

    move-result-object v4

    .line 1632
    .local v4, "result":Landroid/hardware/power/CpuHeadroomResult;
    if-nez v4, :cond_a

    .line 1633
    const-string v6, "HintManagerService"

    const-string v7, "CPU headroom from Power HAL is invalid"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    return-object v3

    .line 1645
    .end local v4    # "result":Landroid/hardware/power/CpuHeadroomResult;
    :catch_0
    move-exception v4

    goto :goto_7

    .line 1636
    .restart local v4    # "result":Landroid/hardware/power/CpuHeadroomResult;
    :cond_a
    iget-object v6, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v6}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1637
    :try_start_3
    iget-object v7, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v7}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomCache(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    move-result-object v7

    invoke-virtual {v7, v2, v4}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1638
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1639
    if-eqz v5, :cond_b

    .line 1640
    :try_start_4
    iget-object v6, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v6}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1641
    :try_start_5
    iget-object v7, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v7}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmUidToLastUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v9}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLastCpuUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    monitor-exit v6

    goto :goto_6

    :catchall_2
    move-exception v7

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v0    # "uid":I
    .end local v1    # "pid":I
    .end local v2    # "halParams":Landroid/hardware/power/CpuHeadroomParams;
    .end local v5    # "shouldCheckUserModeCpuTime":Z
    .end local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .end local p1    # "params":Landroid/os/CpuHeadroomParamsInternal;
    :try_start_6
    throw v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1644
    .restart local v0    # "uid":I
    .restart local v1    # "pid":I
    .restart local v2    # "halParams":Landroid/hardware/power/CpuHeadroomParams;
    .restart local v5    # "shouldCheckUserModeCpuTime":Z
    .restart local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .restart local p1    # "params":Landroid/os/CpuHeadroomParamsInternal;
    :cond_b
    :goto_6
    return-object v4

    .line 1638
    :catchall_3
    move-exception v7

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .end local v0    # "uid":I
    .end local v1    # "pid":I
    .end local v2    # "halParams":Landroid/hardware/power/CpuHeadroomParams;
    .end local v5    # "shouldCheckUserModeCpuTime":Z
    .end local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .end local p1    # "params":Landroid/os/CpuHeadroomParamsInternal;
    :try_start_8
    throw v7
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1645
    .end local v4    # "result":Landroid/hardware/power/CpuHeadroomResult;
    .restart local v0    # "uid":I
    .restart local v1    # "pid":I
    .restart local v2    # "halParams":Landroid/hardware/power/CpuHeadroomParams;
    .restart local v5    # "shouldCheckUserModeCpuTime":Z
    .restart local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .restart local p1    # "params":Landroid/os/CpuHeadroomParamsInternal;
    :goto_7
    nop

    .line 1646
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "HintManagerService"

    const-string v7, "Failed to get CPU headroom from Power HAL"

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1647
    return-object v3

    .line 1614
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "shouldCheckUserModeCpuTime":Z
    :goto_8
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v4

    .line 1584
    .end local v0    # "uid":I
    .end local v1    # "pid":I
    .end local v2    # "halParams":Landroid/hardware/power/CpuHeadroomParams;
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCpuHeadroomMinIntervalMillis()J
    .locals 2

    .line 1809
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    int-to-long v0, v0

    return-wide v0

    .line 1810
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getGpuHeadroom(Landroid/os/GpuHeadroomParamsInternal;)Landroid/hardware/power/GpuHeadroomResult;
    .locals 5
    .param p1, "params"    # Landroid/os/GpuHeadroomParamsInternal;

    .line 1748
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz v0, :cond_2

    .line 1751
    invoke-direct {p0, p1}, Lcom/android/server/power/hint/HintManagerService$BinderService;->checkGpuHeadroomParams(Landroid/os/GpuHeadroomParamsInternal;)V

    .line 1752
    new-instance v0, Landroid/hardware/power/GpuHeadroomParams;

    invoke-direct {v0}, Landroid/hardware/power/GpuHeadroomParams;-><init>()V

    .line 1753
    .local v0, "halParams":Landroid/hardware/power/GpuHeadroomParams;
    iget-byte v1, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B

    iput-byte v1, v0, Landroid/hardware/power/GpuHeadroomParams;->calculationType:B

    .line 1754
    iget v1, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    iput v1, v0, Landroid/hardware/power/GpuHeadroomParams;->calculationWindowMillis:I

    .line 1755
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmGpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1756
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmGpuHeadroomCache(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/power/GpuHeadroomResult;

    .line 1757
    .local v2, "res":Landroid/hardware/power/GpuHeadroomResult;
    nop

    nop

    if-eqz v2, :cond_0

    monitor-exit v1

    return-object v2

    .line 1758
    .end local v2    # "res":Landroid/hardware/power/GpuHeadroomResult;
    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1761
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPowerHal(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/IPower;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/hardware/power/IPower;->getGpuHeadroom(Landroid/hardware/power/GpuHeadroomParams;)Landroid/hardware/power/GpuHeadroomResult;

    move-result-object v2

    .line 1762
    .local v2, "headroom":Landroid/hardware/power/GpuHeadroomResult;
    if-nez v2, :cond_1

    .line 1763
    const-string v3, "HintManagerService"

    const-string v4, "GPU headroom from Power HAL is invalid"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    return-object v1

    .line 1770
    .end local v2    # "headroom":Landroid/hardware/power/GpuHeadroomResult;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1766
    .restart local v2    # "headroom":Landroid/hardware/power/GpuHeadroomResult;
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmGpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1767
    :try_start_2
    iget-object v4, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v4}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmGpuHeadroomCache(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1768
    monitor-exit v3

    .line 1769
    return-object v2

    .line 1768
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "halParams":Landroid/hardware/power/GpuHeadroomParams;
    .end local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .end local p1    # "params":Landroid/os/GpuHeadroomParamsInternal;
    :try_start_3
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1770
    .end local v2    # "headroom":Landroid/hardware/power/GpuHeadroomResult;
    .restart local v0    # "halParams":Landroid/hardware/power/GpuHeadroomParams;
    .restart local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .restart local p1    # "params":Landroid/os/GpuHeadroomParamsInternal;
    :goto_0
    nop

    .line 1771
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HintManagerService"

    const-string v4, "Failed to get GPU headroom from Power HAL"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1772
    return-object v1

    .line 1758
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 1749
    .end local v0    # "halParams":Landroid/hardware/power/GpuHeadroomParams;
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getGpuHeadroomMinIntervalMillis()J
    .locals 2

    .line 1817
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz v0, :cond_0

    .line 1820
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinIntervalMillis:I

    int-to-long v0, v0

    return-wide v0

    .line 1818
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHintSessionThreadIds(Landroid/os/IHintSession;)[I
    .locals 2
    .param p1, "hintSession"    # Landroid/os/IHintSession;

    .line 1577
    move-object v0, p1

    check-cast v0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 1578
    .local v0, "appHintSession":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    invoke-virtual {v0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getThreadIds()[I

    move-result-object v1

    return-object v1
.end method

.method public getMaxGraphicsPipelineThreadsCount()I
    .locals 1

    .line 1566
    const/4 v0, 0x5

    return v0
.end method

.method public getSessionChannel(Landroid/os/IBinder;)Landroid/hardware/power/ChannelConfig;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1536
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPowerHalVersion(Lcom/android/server/power/hint/HintManagerService;)I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    nop

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmFMQUsesIntegratedEventFlag(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1537
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1540
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1541
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v0

    .line 1542
    .local v0, "callingTgid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1543
    .local v1, "callingUid":I
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/power/hint/HintManagerService;->getOrCreateMappedChannelItem(IILandroid/os/IBinder;)Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    move-result-object v3

    .line 1547
    .local v3, "item":Lcom/android/server/power/hint/HintManagerService$ChannelItem;
    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->getConfig()Landroid/hardware/power/ChannelConfig;

    move-result-object v4

    iget-object v4, v4, Landroid/hardware/power/ChannelConfig;->eventFlagDescriptor:Landroid/hardware/common/fmq/MQDescriptor;

    if-nez v4, :cond_1

    .line 1548
    iget-object v4, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fputmFMQUsesIntegratedEventFlag(Lcom/android/server/power/hint/HintManagerService;Ljava/lang/Boolean;)V

    .line 1549
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->closeSessionChannel()V

    .line 1550
    return-object v2

    .line 1552
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->getConfig()Landroid/hardware/power/ChannelConfig;

    move-result-object v2

    return-object v2

    .line 1538
    .end local v0    # "callingTgid":I
    .end local v1    # "callingUid":I
    .end local v3    # "item":Lcom/android/server/power/hint/HintManagerService$ChannelItem;
    :cond_2
    :goto_0
    return-object v2
.end method

.method public passSessionManagerBinder(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "sessionManager"    # Landroid/os/IBinder;

    .line 1826
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1827
    return-void

    .line 1829
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p1}, Landroid/adpf/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adpf/ISessionManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fputmSessionManager(Lcom/android/server/power/hint/HintManagerService;Landroid/adpf/ISessionManager;)V

    .line 1830
    return-void
.end method

.method public registerClient(Landroid/os/IHintManager$IHintManagerClient;)Landroid/os/IHintManager$HintManagerClientData;
    .locals 1
    .param p1, "clientBinder"    # Landroid/os/IHintManager$IHintManagerClient;

    .line 1835
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;->getClientData()Landroid/os/IHintManager$HintManagerClientData;

    move-result-object v0

    return-object v0
.end method

.method public setHintSessionThreads(Landroid/os/IHintSession;[I)V
    .locals 1
    .param p1, "hintSession"    # Landroid/os/IHintSession;
    .param p2, "tids"    # [I

    .line 1571
    move-object v0, p1

    check-cast v0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 1572
    .local v0, "appHintSession":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    invoke-virtual {v0, p2}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->setThreads([I)V

    .line 1573
    return-void
.end method
