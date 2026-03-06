.class public Lcom/android/server/timezonedetector/location/ZoneInfoDbTimeZoneProviderEventPreProcessor;
.super Ljava/lang/Object;
.source "ZoneInfoDbTimeZoneProviderEventPreProcessor.java"

# interfaces
.implements Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasInvalidZones(Landroid/service/timezone/TimeZoneProviderEvent;)Z
    .locals 3
    .param p0, "event"    # Landroid/service/timezone/TimeZoneProviderEvent;

    .line 76
    invoke-virtual {p0}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderSuggestion;->getTimeZoneIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    .local v1, "timeZone":Ljava/lang/String;
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has unsupported zone("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->infoLog(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x1

    return v0

    .line 77
    :cond_0
    nop

    .line 81
    .end local v1    # "timeZone":Ljava/lang/String;
    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public preProcess(Landroid/service/timezone/TimeZoneProviderEvent;)Landroid/service/timezone/TimeZoneProviderEvent;
    .locals 5
    .param p1, "event"    # Landroid/service/timezone/TimeZoneProviderEvent;

    .line 41
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderSuggestion;->getTimeZoneIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_1

    .line 58
    :cond_1
    invoke-static {p1}, Lcom/android/server/timezonedetector/location/ZoneInfoDbTimeZoneProviderEventPreProcessor;->hasInvalidZones(Landroid/service/timezone/TimeZoneProviderEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getTimeZoneProviderStatus()Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object v0

    .line 61
    .local v0, "providerStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    if-eqz v0, :cond_2

    .line 62
    new-instance v1, Landroid/service/timezone/TimeZoneProviderStatus$Builder;

    invoke-direct {v1, v0}, Landroid/service/timezone/TimeZoneProviderStatus$Builder;-><init>(Landroid/service/timezone/TimeZoneProviderStatus;)V

    .local v1, "providerStatusBuilder":Landroid/service/timezone/TimeZoneProviderStatus$Builder;
    goto :goto_0

    .line 64
    .end local v1    # "providerStatusBuilder":Landroid/service/timezone/TimeZoneProviderStatus$Builder;
    :cond_2
    new-instance v1, Landroid/service/timezone/TimeZoneProviderStatus$Builder;

    invoke-direct {v1}, Landroid/service/timezone/TimeZoneProviderStatus$Builder;-><init>()V

    .line 66
    .restart local v1    # "providerStatusBuilder":Landroid/service/timezone/TimeZoneProviderStatus$Builder;
    :goto_0
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getCreationElapsedMillis()J

    move-result-wide v2

    .line 68
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->setTimeZoneResolutionOperationStatus(I)Landroid/service/timezone/TimeZoneProviderStatus$Builder;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->build()Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object v4

    .line 66
    invoke-static {v2, v3, v4}, Landroid/service/timezone/TimeZoneProviderEvent;->createUncertainEvent(JLandroid/service/timezone/TimeZoneProviderStatus;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object v2

    return-object v2

    .line 72
    .end local v0    # "providerStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    .end local v1    # "providerStatusBuilder":Landroid/service/timezone/TimeZoneProviderStatus$Builder;
    :cond_3
    return-object p1

    .line 42
    :goto_1
    return-object p1
.end method
