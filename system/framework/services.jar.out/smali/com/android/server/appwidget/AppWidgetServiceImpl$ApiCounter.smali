.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ApiCounter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;
    }
.end annotation


# instance fields
.field private final mCallCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxCallsPerInterval:I

.field private mMaxProviders:I

.field private mMonotonicClock:Ljava/util/function/LongSupplier;

.field private mResetIntervalMs:J


# direct methods
.method constructor <init>(JII)V
    .locals 6
    .param p1, "resetIntervalMs"    # J
    .param p3, "maxCallsPerInterval"    # I
    .param p4, "maxProviders"    # I

    .line 6374
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    .end local p1    # "resetIntervalMs":J
    .end local p3    # "maxCallsPerInterval":I
    .end local p4    # "maxProviders":I
    .local v1, "resetIntervalMs":J
    .local v3, "maxCallsPerInterval":I
    .local v4, "maxProviders":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;-><init>(JIILjava/util/function/LongSupplier;)V

    .line 6375
    return-void
.end method

.method constructor <init>(JIILjava/util/function/LongSupplier;)V
    .locals 1
    .param p1, "resetIntervalMs"    # J
    .param p3, "maxCallsPerInterval"    # I
    .param p4, "maxProviders"    # I
    .param p5, "monotonicClock"    # Ljava/util/function/LongSupplier;

    .line 6378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6361
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    .line 6379
    iput-wide p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    .line 6380
    iput p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxCallsPerInterval:I

    .line 6381
    iput p4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxProviders:I

    .line 6382
    iput-object p5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMonotonicClock:Ljava/util/function/LongSupplier;

    .line 6383
    return-void
.end method


# virtual methods
.method public getMaxCallsPerInterval()I
    .locals 1

    .line 6398
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxCallsPerInterval:I

    return v0
.end method

.method public getMaxProviders()I
    .locals 1

    .line 6406
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxProviders:I

    return v0
.end method

.method public getResetIntervalMs()J
    .locals 2

    .line 6390
    iget-wide v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    return-wide v0
.end method

.method public remove(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)V
    .locals 1
    .param p1, "id"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 6440
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6441
    return-void
.end method

.method public setMaxCallsPerInterval(I)V
    .locals 0
    .param p1, "maxCallsPerInterval"    # I

    .line 6394
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxCallsPerInterval:I

    .line 6395
    return-void
.end method

.method public setMaxProviders(I)V
    .locals 0
    .param p1, "maxProviders"    # I

    .line 6402
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxProviders:I

    .line 6403
    return-void
.end method

.method public setResetIntervalMs(J)V
    .locals 0
    .param p1, "resetIntervalMs"    # J

    .line 6386
    iput-wide p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    .line 6387
    return-void
.end method

.method public tryApiCall(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Z
    .locals 8
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 6414
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 6415
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxProviders:I

    if-lt v0, v2, :cond_0

    .line 6416
    return v1

    .line 6418
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl-IA;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6420
    :cond_1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    .line 6422
    .local v0, "record":Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMonotonicClock:Ljava/util/function/LongSupplier;

    invoke-interface {v2}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v2

    .line 6423
    .local v2, "now":J
    iget-wide v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    sub-long v4, v2, v4

    .line 6425
    .local v4, "timeSinceLastResetMs":J
    iget-wide v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 6426
    invoke-virtual {v0, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->reset(J)V

    .line 6428
    :cond_2
    iget v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    iget v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxCallsPerInterval:I

    if-ge v6, v7, :cond_3

    .line 6429
    iget v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    const/4 v6, 0x1

    add-int/2addr v1, v6

    iput v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    .line 6430
    return v6

    .line 6432
    :cond_3
    return v1
.end method
