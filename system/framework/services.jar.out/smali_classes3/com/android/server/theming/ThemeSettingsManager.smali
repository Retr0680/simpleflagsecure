.class Lcom/android/server/theming/ThemeSettingsManager;
.super Ljava/lang/Object;
.source "ThemeSettingsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static final TIMESTAMP_FIELD:Ljava/lang/String; = "_applied_timestamp"


# instance fields
.field private final mDefaults:Landroid/content/theming/ThemeSettings;

.field private final mFields:[Landroid/content/theming/ThemeSettingsField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/content/theming/ThemeSettingsField<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/android/server/theming/ThemeSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/theming/ThemeSettingsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/theming/ThemeSettings;)V
    .locals 1
    .param p1, "defaults"    # Landroid/content/theming/ThemeSettings;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/theming/ThemeSettingsManager;->mDefaults:Landroid/content/theming/ThemeSettings;

    .line 57
    invoke-static {p1}, Landroid/content/theming/ThemeSettingsField;->getFields(Landroid/content/theming/ThemeSettings;)[Landroid/content/theming/ThemeSettingsField;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/theming/ThemeSettingsManager;->mFields:[Landroid/content/theming/ThemeSettingsField;

    .line 58
    return-void
.end method


# virtual methods
.method loadSettings(ILandroid/content/ContentResolver;)Landroid/content/theming/ThemeSettings;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .line 69
    const-string v0, "theme_customization_overlay_packages"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    goto :goto_1

    .line 75
    :cond_0
    move-object v2, v0

    :goto_0
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .local v1, "userSettings":Lorg/json/JSONObject;
    goto :goto_2

    .line 76
    .end local v1    # "userSettings":Lorg/json/JSONObject;
    :goto_1
    nop

    .line 77
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 80
    .local v1, "userSettings":Lorg/json/JSONObject;
    :goto_2
    invoke-static {}, Landroid/content/theming/ThemeSettings;->updater()Landroid/content/theming/ThemeSettingsUpdater;

    move-result-object v2

    .line 82
    .local v2, "updater":Landroid/content/theming/ThemeSettingsUpdater;
    iget-object v3, p0, Lcom/android/server/theming/ThemeSettingsManager;->mFields:[Landroid/content/theming/ThemeSettingsField;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 83
    .local v6, "field":Landroid/content/theming/ThemeSettingsField;, "Landroid/content/theming/ThemeSettingsField<**>;"
    invoke-virtual {v6, v1, v2}, Landroid/content/theming/ThemeSettingsField;->fromJSON(Lorg/json/JSONObject;Landroid/content/theming/ThemeSettingsUpdater;)V

    .line 82
    .end local v6    # "field":Landroid/content/theming/ThemeSettingsField;, "Landroid/content/theming/ThemeSettingsField<**>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/android/server/theming/ThemeSettingsManager;->mDefaults:Landroid/content/theming/ThemeSettings;

    invoke-virtual {v2, v3}, Landroid/content/theming/ThemeSettingsUpdater;->toThemeSettings(Landroid/content/theming/ThemeSettings;)Landroid/content/theming/ThemeSettings;

    move-result-object v3

    return-object v3
.end method

.method replaceSettings(ILandroid/content/ContentResolver;Landroid/content/theming/ThemeSettings;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "newSettings"    # Landroid/content/theming/ThemeSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Impossible to write empty settings"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 100
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 103
    .local v1, "jsonSettings":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/android/server/theming/ThemeSettingsManager;->mFields:[Landroid/content/theming/ThemeSettingsField;

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 104
    .local v5, "field":Landroid/content/theming/ThemeSettingsField;, "Landroid/content/theming/ThemeSettingsField<**>;"
    invoke-virtual {v5, p3, v1}, Landroid/content/theming/ThemeSettingsField;->toJSON(Landroid/content/theming/ThemeSettings;Lorg/json/JSONObject;)V

    .line 103
    .end local v5    # "field":Landroid/content/theming/ThemeSettingsField;, "Landroid/content/theming/ThemeSettingsField<**>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 109
    :cond_1
    :try_start_0
    const-string v2, "_applied_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_2

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/android/server/theming/ThemeSettingsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error saving timestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "jsonString":Ljava/lang/String;
    const-string v2, "theme_customization_overlay_packages"

    invoke-static {p2, v2, v0, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 118
    return-void
.end method

.method updateSettings(ILandroid/content/ContentResolver;Landroid/content/theming/ThemeSettings;)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "newSettings"    # Landroid/content/theming/ThemeSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Impossible to write empty settings"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 132
    const-string v1, "theme_customization_overlay_packages"

    invoke-static {p2, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "existingJsonString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    if-nez v2, :cond_1

    const-string v4, "{}"

    goto :goto_1

    .line 138
    :catch_0
    move-exception v3

    goto :goto_2

    .line 137
    :cond_1
    move-object v4, v2

    :goto_1
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .local v3, "existingJson":Lorg/json/JSONObject;
    goto :goto_3

    .line 138
    .end local v3    # "existingJson":Lorg/json/JSONObject;
    :goto_2
    nop

    .line 139
    .local v3, "e":Lorg/json/JSONException;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v4

    .line 142
    .local v3, "existingJson":Lorg/json/JSONObject;
    :goto_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 143
    .local v4, "newJson":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/android/server/theming/ThemeSettingsManager;->mFields:[Landroid/content/theming/ThemeSettingsField;

    array-length v6, v5

    move v7, v0

    :goto_4
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 144
    .local v8, "field":Landroid/content/theming/ThemeSettingsField;, "Landroid/content/theming/ThemeSettingsField<**>;"
    invoke-virtual {v8, p3, v4}, Landroid/content/theming/ThemeSettingsField;->toJSON(Landroid/content/theming/ThemeSettings;Lorg/json/JSONObject;)V

    .line 143
    .end local v8    # "field":Landroid/content/theming/ThemeSettingsField;, "Landroid/content/theming/ThemeSettingsField<**>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 149
    :cond_2
    :try_start_1
    const-string v5, "_applied_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    goto :goto_5

    .line 150
    :catch_1
    move-exception v5

    .line 151
    .local v5, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/android/server/theming/ThemeSettingsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error saving timestamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6, v7, v0}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 156
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 158
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_6

    .line 161
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "mergedJsonString":Ljava/lang/String;
    invoke-static {p2, v1, v5, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 165
    return-void
.end method
