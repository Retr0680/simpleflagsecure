.class public final Lcom/android/server/stats/pull/RawSettingsTelemetryUtils;
.super Ljava/lang/Object;
.source "RawSettingsTelemetryUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsTelemetryUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPeakRefreshRateSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingRawValue"    # Ljava/lang/String;

    .line 69
    if-nez p1, :cond_0

    .line 70
    const-string v0, "SettingsTelemetryUtils"

    const-string v1, "PEAK_REFRESH_RATE value is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "floatInfinityStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    nop

    .line 77
    invoke-static {p0}, Lcom/android/internal/display/RefreshRateSettingsUtils;->findHighestRefreshRateAmongAllBuiltInDisplays(Landroid/content/Context;)F

    move-result v1

    .line 78
    .local v1, "max_refresh_rate":F
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 81
    .end local v1    # "max_refresh_rate":F
    :cond_1
    return-object p1
.end method

.method public static getTelemetrySettingFromRawVal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 47
    if-nez p1, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    const-string/jumbo v0, "peak_refresh_rate"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-static {p0, p2}, Lcom/android/server/stats/pull/RawSettingsTelemetryUtils;->getPeakRefreshRateSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_1
    return-object p2
.end method
