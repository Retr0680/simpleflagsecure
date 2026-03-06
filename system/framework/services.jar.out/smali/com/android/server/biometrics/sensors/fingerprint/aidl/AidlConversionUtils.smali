.class final Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlConversionUtils;
.super Ljava/lang/Object;
.source "AidlConversionUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static toFrameworkAcquiredInfo(B)I
    .locals 3
    .param p0, "aidlAcquiredInfo"    # B

    .line 62
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    .line 63
    return p0

    .line 67
    :cond_0
    const/16 v0, 0x8

    if-nez p0, :cond_1

    .line 68
    return v0

    .line 69
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 70
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_2
    const/4 v2, 0x2

    if-ne p0, v2, :cond_3

    .line 72
    return v1

    .line 73
    :cond_3
    const/4 v1, 0x3

    if-ne p0, v1, :cond_4

    .line 74
    return v2

    .line 75
    :cond_4
    const/4 v2, 0x4

    if-ne p0, v2, :cond_5

    .line 76
    return v1

    .line 77
    :cond_5
    const/4 v1, 0x5

    if-ne p0, v1, :cond_6

    .line 78
    return v2

    .line 79
    :cond_6
    const/4 v2, 0x6

    if-ne p0, v2, :cond_7

    .line 80
    return v1

    .line 81
    :cond_7
    const/4 v1, 0x7

    if-ne p0, v1, :cond_8

    .line 82
    return v2

    .line 83
    :cond_8
    if-ne p0, v0, :cond_9

    .line 84
    return v1

    .line 85
    :cond_9
    const/16 v1, 0x9

    if-ne p0, v1, :cond_a

    .line 87
    return v0

    .line 88
    :cond_a
    const/16 v2, 0xa

    if-ne p0, v2, :cond_b

    .line 90
    return v2

    .line 91
    :cond_b
    const/16 v2, 0xb

    if-ne p0, v2, :cond_c

    .line 92
    return v1

    .line 93
    :cond_c
    const/16 v1, 0xc

    if-ne p0, v1, :cond_d

    .line 95
    return v0

    .line 96
    :cond_d
    const/16 v1, 0xe

    if-ne p0, v1, :cond_e

    .line 97
    return v2

    .line 99
    :cond_e
    return v0
.end method

.method public static toFrameworkError(B)I
    .locals 3
    .param p0, "aidlError"    # B

    .line 33
    const/16 v0, 0x11

    if-nez p0, :cond_0

    .line 34
    return v0

    .line 35
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 36
    return v1

    .line 37
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 38
    return v1

    .line 39
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 40
    return v1

    .line 41
    :cond_3
    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    .line 42
    return v1

    .line 43
    :cond_4
    const/4 v1, 0x5

    if-ne p0, v1, :cond_5

    .line 44
    return v1

    .line 45
    :cond_5
    const/4 v1, 0x6

    if-ne p0, v1, :cond_6

    .line 46
    return v1

    .line 47
    :cond_6
    const/4 v1, 0x7

    const/16 v2, 0x8

    if-ne p0, v1, :cond_7

    .line 48
    return v2

    .line 49
    :cond_7
    if-ne p0, v2, :cond_8

    .line 50
    const/16 v0, 0x12

    return v0

    .line 51
    :cond_8
    const/16 v1, 0x9

    if-ne p0, v1, :cond_9

    .line 52
    const/16 v0, 0x13

    return v0

    .line 54
    :cond_9
    return v0
.end method
