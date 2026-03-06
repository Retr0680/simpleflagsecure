.class public Lcom/android/server/appwidget/AppWidgetXmlUtil;
.super Ljava/lang/Object;
.source "AppWidgetXmlUtil.java"


# static fields
.field private static final ATTR_AUTO_ADVANCED_VIEW_ID:Ljava/lang/String; = "auto_advance_view_id"

.field private static final ATTR_CONFIGURE:Ljava/lang/String; = "configure"

.field private static final ATTR_DESCRIPTION_RES:Ljava/lang/String; = "description_res"

.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_INITIAL_KEYGUARD_LAYOUT:Ljava/lang/String; = "initial_keyguard_layout"

.field private static final ATTR_INITIAL_LAYOUT:Ljava/lang/String; = "initial_layout"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final ATTR_MAX_RESIZE_HEIGHT:Ljava/lang/String; = "max_resize_height"

.field private static final ATTR_MAX_RESIZE_WIDTH:Ljava/lang/String; = "max_resize_width"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_RESIZE_HEIGHT:Ljava/lang/String; = "min_resize_height"

.field private static final ATTR_MIN_RESIZE_WIDTH:Ljava/lang/String; = "min_resize_width"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEW_ID:Ljava/lang/String; = "new_id"

.field private static final ATTR_NOTIFIED:Ljava/lang/String; = "notified"

.field private static final ATTR_OLD_ID:Ljava/lang/String; = "old_id"

.field private static final ATTR_OS_FINGERPRINT:Ljava/lang/String; = "os_fingerprint"

.field private static final ATTR_PACKAGE_NAMES:Ljava/lang/String; = "pkgs"

.field private static final ATTR_PREVIEW_IMAGE:Ljava/lang/String; = "preview_image"

.field private static final ATTR_PREVIEW_LAYOUT:Ljava/lang/String; = "preview_layout"

.field private static final ATTR_PROVIDER_INHERITANCE:Ljava/lang/String; = "provider_inheritance"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_TAG:Ljava/lang/String; = "tag"

.field private static final ATTR_TARGET_CELL_HEIGHT:Ljava/lang/String; = "target_cell_height"

.field private static final ATTR_TARGET_CELL_WIDTH:Ljava/lang/String; = "target_cell_width"

.field private static final ATTR_UPDATE_PERIOD_MILLIS:Ljava/lang/String; = "update_period_millis"

.field private static final ATTR_WIDGET_CATEGORY:Ljava/lang/String; = "widget_category"

.field private static final ATTR_WIDGET_FEATURES:Ljava/lang/String; = "widget_features"

.field private static final SIZE_SEPARATOR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "AppWidgetXmlUtil"

.field static final TAG_BACKUP_RESTORE_CONTROLLER_STATE:Ljava/lang/String; = "br"

.field private static final TAG_HOST_UPDATES:Ljava/lang/String; = "host_updates"

.field private static final TAG_PROVIDER_UPDATES:Ljava/lang/String; = "provider_updates"

.field private static final TAG_PRUNED_APPS:Ljava/lang/String; = "pruned_apps"

.field private static final TAG_RECORD:Ljava/lang/String; = "record"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deserializeWidgetSizesStr(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "sizesStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/SizeF;",
            ">;"
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 177
    :cond_1
    :try_start_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 178
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 179
    invoke-static {v2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    return-object v1

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "AppWidgetXmlUtil"

    const-string v3, "Error parsing widget sizes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    return-object v0

    .line 174
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return-object v0
.end method

.method private static parseRestoreUpdateRecords(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .locals 8
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    :cond_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    .line 334
    .local v1, "type":I
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v3, "record"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 336
    const-string/jumbo v4, "old_id"

    const/4 v5, 0x0

    invoke-interface {p0, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 337
    .local v4, "oldId":I
    const-string/jumbo v6, "new_id"

    invoke-interface {p0, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 338
    .local v6, "newId":I
    const-string/jumbo v7, "notified"

    invoke-interface {p0, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 340
    .local v5, "notified":Z
    new-instance v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    invoke-direct {v7, v4, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;-><init>(II)V

    .line 343
    .local v7, "record":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iput-boolean v5, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    .line 344
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    .end local v4    # "oldId":I
    .end local v5    # "notified":Z
    .end local v6    # "newId":I
    .end local v7    # "record":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 347
    return-object v0
.end method

.method public static readAppWidgetProviderInfoLocked(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 6
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    const-string/jumbo v0, "os_fingerprint"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "fingerprint":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    return-object v1

    .line 134
    :cond_0
    new-instance v2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 135
    .local v2, "info":Landroid/appwidget/AppWidgetProviderInfo;
    const-string/jumbo v3, "min_width"

    const/4 v4, 0x0

    invoke-interface {p0, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 136
    const-string/jumbo v3, "min_height"

    invoke-interface {p0, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 137
    const-string/jumbo v3, "min_resize_width"

    invoke-interface {p0, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 138
    const-string/jumbo v3, "min_resize_height"

    invoke-interface {p0, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 139
    const-string/jumbo v3, "max_resize_width"

    invoke-interface {p0, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    .line 140
    const-string/jumbo v3, "max_resize_height"

    invoke-interface {p0, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    .line 141
    const-string/jumbo v3, "target_cell_width"

    invoke-interface {p0, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    .line 142
    const-string/jumbo v3, "target_cell_height"

    invoke-interface {p0, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    .line 143
    const-string/jumbo v3, "update_period_millis"

    invoke-interface {p0, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 144
    const-string/jumbo v3, "initial_layout"

    invoke-interface {p0, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 145
    const-string/jumbo v3, "initial_keyguard_layout"

    invoke-interface {p0, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 147
    const-string v3, "configure"

    invoke-interface {p0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "configure":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 149
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 151
    :cond_1
    const-string/jumbo v5, "label"

    invoke-interface {p0, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 152
    const-string/jumbo v5, "icon"

    invoke-interface {p0, v1, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 153
    const-string/jumbo v5, "preview_image"

    invoke-interface {p0, v1, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 154
    const-string/jumbo v5, "preview_layout"

    invoke-interface {p0, v1, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    .line 155
    const-string v5, "auto_advance_view_id"

    invoke-interface {p0, v1, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 156
    const-string/jumbo v5, "resize_mode"

    invoke-interface {p0, v1, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 157
    const-string/jumbo v5, "widget_category"

    invoke-interface {p0, v1, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 158
    const-string/jumbo v5, "widget_features"

    invoke-interface {p0, v1, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    .line 159
    const-string v5, "description_res"

    invoke-interface {p0, v1, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    .line 160
    const-string/jumbo v5, "provider_inheritance"

    invoke-interface {p0, v1, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v2, Landroid/appwidget/AppWidgetProviderInfo;->isExtendedFromAppWidgetProvider:Z

    .line 162
    return-object v2
.end method

.method static readBackupRestoreControllerState(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$State;
    .locals 9
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 279
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "tag":Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 284
    .local v1, "prunedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 286
    .local v3, "updatesByProviders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 290
    .local v4, "updatesByHosts":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    .line 291
    .local v6, "type":I
    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 292
    goto :goto_2

    .line 294
    :cond_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 295
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string/jumbo v8, "host_updates"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 315
    .end local v6    # "type":I
    :catch_0
    move-exception v2

    goto :goto_3

    .line 295
    .restart local v6    # "type":I
    :sswitch_1
    const-string/jumbo v7, "pruned_apps"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v7, "provider_updates"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    move v7, v2

    goto :goto_1

    :goto_0
    const/4 v7, -0x1

    :goto_1
    const-string/jumbo v8, "tag"

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 306
    :pswitch_0
    :try_start_1
    invoke-interface {p0, v5, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 307
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetXmlUtil;->parseRestoreUpdateRecords(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v8

    .line 306
    invoke-virtual {v4, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    goto :goto_2

    .line 302
    :pswitch_1
    invoke-interface {p0, v5, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 303
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetXmlUtil;->parseRestoreUpdateRecords(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v8

    .line 302
    invoke-virtual {v3, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    goto :goto_2

    .line 297
    :pswitch_2
    const-string/jumbo v7, "pkgs"

    .line 298
    invoke-interface {p0, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 299
    .local v7, "packages":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 300
    nop

    .line 312
    .end local v7    # "packages":Ljava/lang/String;
    :goto_2
    if-eq v6, v2, :cond_3

    const-string v7, "br"

    .line 313
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    if-ne v6, v5, :cond_0

    .line 318
    :cond_3
    nop

    .line 319
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$State;

    invoke-direct {v2, v1, v3, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$State;-><init>(Ljava/util/Set;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-object v2

    .line 315
    .end local v6    # "type":I
    :goto_3
    nop

    .line 316
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "AppWidgetXmlUtil"

    const-string v7, "error parsing state"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    return-object v5

    :sswitch_data_0
    .sparse-switch
        -0x35adf384 -> :sswitch_2
        -0x1e52e669 -> :sswitch_1
        0x19eb5533 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static serializeWidgetSizes(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/SizeF;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 167
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/SizeF;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 168
    const-string v1, ","

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    return-object v0
.end method

.method public static writeAppWidgetProviderInfoLocked(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .param p0, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    const-string/jumbo v0, "min_width"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    const-string/jumbo v0, "min_height"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    const-string/jumbo v0, "min_resize_width"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    const-string/jumbo v0, "min_resize_height"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    const-string/jumbo v0, "max_resize_width"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const-string/jumbo v0, "max_resize_height"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    const-string/jumbo v0, "target_cell_width"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    const-string/jumbo v0, "target_cell_height"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    const-string/jumbo v0, "update_period_millis"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    const-string/jumbo v0, "initial_layout"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    const-string/jumbo v0, "initial_keyguard_layout"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "configure"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    :cond_0
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 109
    const-string/jumbo v0, "label"

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    :cond_1
    const-string/jumbo v0, "icon"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    const-string/jumbo v0, "preview_image"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    const-string/jumbo v0, "preview_layout"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    const-string v0, "auto_advance_view_id"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    const-string/jumbo v0, "resize_mode"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    const-string/jumbo v0, "widget_category"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    const-string/jumbo v0, "widget_features"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    const-string v0, "description_res"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    const-string/jumbo v0, "provider_inheritance"

    iget-boolean v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->isExtendedFromAppWidgetProvider:Z

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    const-string/jumbo v0, "os_fingerprint"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    return-void
.end method

.method static writeBackupRestoreControllerState(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$State;)V
    .locals 6
    .param p0, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p1, "state"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    const/4 v0, 0x0

    const-string v1, "br"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$State;->getPrunedApps()Ljava/util/Set;

    move-result-object v2

    .line 202
    .local v2, "prunedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    const-string/jumbo v3, "pruned_apps"

    invoke-interface {p0, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    const-string v4, ","

    invoke-static {v4, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pkgs"

    invoke-interface {p0, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    invoke-interface {p0, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$State;->getUpdatesByProvider()Landroid/util/SparseArray;

    move-result-object v3

    .line 209
    .local v3, "updatesByProvider":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    if-eqz v3, :cond_1

    .line 210
    const-string/jumbo v4, "provider_updates"

    invoke-static {p0, v4, v3}, Lcom/android/server/appwidget/AppWidgetXmlUtil;->writeUpdateRecords(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 213
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$State;->getUpdatesByHost()Landroid/util/SparseArray;

    move-result-object v4

    .line 214
    .local v4, "updatesByHost":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    if-eqz v4, :cond_2

    .line 215
    const-string/jumbo v5, "host_updates"

    invoke-static {p0, v5, v4}, Lcom/android/server/appwidget/AppWidgetXmlUtil;->writeUpdateRecords(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 217
    :cond_2
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    return-void
.end method

.method private static writeUpdateRecords(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 9
    .param p0, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p1, "outerTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlSerializer;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    .local p2, "records":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 225
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 226
    .local v1, "tag":I
    const/4 v2, 0x0

    invoke-interface {p0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    const-string/jumbo v3, "tag"

    invoke-interface {p0, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    nop

    .line 229
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 230
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 231
    .local v5, "entry":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    const-string/jumbo v6, "record"

    invoke-interface {p0, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    iget v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    const-string/jumbo v8, "old_id"

    invoke-interface {p0, v2, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    const-string/jumbo v7, "new_id"

    iget v8, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    invoke-interface {p0, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    const-string/jumbo v7, "notified"

    iget-boolean v8, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    invoke-interface {p0, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    invoke-interface {p0, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 236
    .end local v5    # "entry":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    goto :goto_1

    .line 237
    :cond_0
    invoke-interface {p0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    .end local v1    # "tag":I
    .end local v3    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 239
    .end local v0    # "i":I
    return-void
.end method
