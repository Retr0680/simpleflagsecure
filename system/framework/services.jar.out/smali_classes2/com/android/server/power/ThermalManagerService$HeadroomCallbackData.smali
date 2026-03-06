.class final Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeadroomCallbackData"
.end annotation


# instance fields
.field mForecastHeadroom:F

.field mForecastSeconds:I

.field mHeadroom:F

.field mHeadroomThresholds:[F


# direct methods
.method static bridge synthetic -$$Nest$misSignificantDifferentFrom(Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->isSignificantDifferentFrom(Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(FFI[F)V
    .locals 0
    .param p1, "headroom"    # F
    .param p2, "forecastHeadroom"    # F
    .param p3, "forecastSeconds"    # I
    .param p4, "headroomThresholds"    # [F

    .line 1841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1842
    iput p1, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroom:F

    .line 1843
    iput p2, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastHeadroom:F

    .line 1844
    iput p3, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastSeconds:I

    .line 1845
    iput-object p4, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    .line 1846
    return-void
.end method

.method private isSignificantDifferentFrom(Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;)Z
    .locals 4
    .param p1, "other"    # Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;

    .line 1849
    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1852
    :cond_0
    iget v1, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastSeconds:I

    iget v2, p1, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastSeconds:I

    if-eq v1, v2, :cond_1

    return v0

    .line 1853
    :cond_1
    iget v1, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroom:F

    iget v2, p1, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroom:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3cf5c28f    # 0.03f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 1854
    return v0

    .line 1855
    :cond_2
    iget v1, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastHeadroom:F

    iget v3, p1, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastHeadroom:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 1856
    return v0

    .line 1857
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 1858
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    iget-object v3, p1, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 1860
    return v0

    .line 1862
    :cond_4
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    aget v2, v2, v1

    iget-object v3, p1, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    aget v3, v3, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 1864
    return v0

    .line 1857
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    nop

    .line 1867
    .end local v1    # "i":I
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeadroomCallbackData[mHeadroom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mForecastHeadroom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastHeadroom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mForecastSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeadroomThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    .line 1874
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1872
    return-object v0
.end method
