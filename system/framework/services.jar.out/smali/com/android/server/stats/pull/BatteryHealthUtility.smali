.class public abstract Lcom/android/server/stats/pull/BatteryHealthUtility;
.super Ljava/lang/Object;
.source "BatteryHealthUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildStatsEvent(ILandroid/hardware/health/BatteryHealthData;II)Landroid/util/StatsEvent;
    .locals 10
    .param p0, "atomTag"    # I
    .param p1, "data"    # Landroid/hardware/health/BatteryHealthData;
    .param p2, "chargeStatus"    # I
    .param p3, "chargePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 46
    iget-wide v0, p1, Landroid/hardware/health/BatteryHealthData;->batteryManufacturingDateSeconds:J

    invoke-static {v0, v1}, Lcom/android/server/stats/pull/BatteryHealthUtility;->secondsToWeekYYYYMMDD(J)I

    move-result v3

    .line 47
    .local v3, "manufacturingDate":I
    iget-wide v0, p1, Landroid/hardware/health/BatteryHealthData;->batteryFirstUsageSeconds:J

    invoke-static {v0, v1}, Lcom/android/server/stats/pull/BatteryHealthUtility;->secondsToWeekYYYYMMDD(J)I

    move-result v4

    .line 48
    .local v4, "firstUsageDate":I
    iget-wide v0, p1, Landroid/hardware/health/BatteryHealthData;->batteryStateOfHealth:J

    .line 49
    .local v0, "stateOfHealth":J
    iget v7, p1, Landroid/hardware/health/BatteryHealthData;->batteryPartStatus:I

    .line 50
    .local v7, "partStatus":I
    iget-object v2, p1, Landroid/hardware/health/BatteryHealthData;->batterySerialNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/stats/pull/BatteryHealthUtility;->stringToIntHash(Ljava/lang/String;)I

    move-result v2

    and-int/lit16 v6, v2, 0xff

    .line 52
    .local v6, "serialHashTruncated":I
    long-to-int v5, v0

    move v2, p0

    move v8, p2

    move v9, p3

    .end local p0    # "atomTag":I
    .end local p2    # "chargeStatus":I
    .end local p3    # "chargePolicy":I
    .local v2, "atomTag":I
    .local v8, "chargeStatus":I
    .local v9, "chargePolicy":I
    invoke-static/range {v2 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static secondsToWeekYYYYMMDD(J)I
    .locals 6
    .param p0, "seconds"    # J

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 58
    .local v0, "calendar":Ljava/util/Calendar;
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p0

    .line 60
    .local v1, "millis":J
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 64
    const/4 v3, 0x7

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 65
    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 66
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 67
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 68
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 70
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 72
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "formattedDate":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    return v5
.end method

.method private static stringToIntHash(Ljava/lang/String;)I
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 78
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 82
    :cond_1
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 83
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 86
    .local v1, "hashBytes":[B
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 87
    .local v2, "bigInt":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    return v3

    .line 79
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hashBytes":[B
    .end local v2    # "bigInt":Ljava/math/BigInteger;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
