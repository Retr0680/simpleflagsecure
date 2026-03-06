.class Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;
.super Ljava/lang/Object;
.source "PsiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/psi/PsiData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppsStallInfo"
.end annotation


# instance fields
.field private final mAvg10SecPercentage:F

.field private final mAvg300SecPercentage:F

.field private final mAvg60SecPercentage:F

.field private final mTotalUsec:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmAvg10SecPercentage(Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->mAvg10SecPercentage:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAvg300SecPercentage(Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->mAvg300SecPercentage:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAvg60SecPercentage(Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->mAvg60SecPercentage:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalUsec(Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->mTotalUsec:J

    return-wide v0
.end method

.method constructor <init>(FFFJ)V
    .locals 0
    .param p1, "avg10SecPercentage"    # F
    .param p2, "avg60SecPercentage"    # F
    .param p3, "avg300SecPercentage"    # F
    .param p4, "totalUsec"    # J

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->mAvg10SecPercentage:F

    .line 48
    iput p2, p0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->mAvg60SecPercentage:F

    .line 49
    iput p3, p0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->mAvg300SecPercentage:F

    .line 50
    iput-wide p4, p0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->mTotalUsec:J

    .line 51
    return-void
.end method
