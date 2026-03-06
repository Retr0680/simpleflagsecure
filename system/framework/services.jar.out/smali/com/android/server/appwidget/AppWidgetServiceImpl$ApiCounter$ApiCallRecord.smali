.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApiCallRecord"
.end annotation


# instance fields
.field public apiCallCount:I

.field public lastResetTimeMs:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 6349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6351
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    .line 6353
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;-><init>()V

    return-void
.end method


# virtual methods
.method reset(J)V
    .locals 1
    .param p1, "nowMs"    # J

    .line 6356
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    .line 6357
    iput-wide p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    .line 6358
    return-void
.end method
