.class public Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
.super Ljava/lang/Object;
.source "PowerStatsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UidStateProportionalEstimate"
.end annotation


# instance fields
.field public intermediates:Ljava/lang/Object;

.field public final stateValues:[I


# direct methods
.method protected constructor <init>([I)V
    .locals 0
    .param p1, "stateValues"    # [I

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 323
    return-void
.end method
