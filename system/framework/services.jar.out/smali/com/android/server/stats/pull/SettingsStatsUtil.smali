.class final Lcom/android/server/stats/pull/SettingsStatsUtil;
.super Ljava/lang/Object;
.source "SettingsStatsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
    }
.end annotation


# static fields
.field private static final GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

.field private static final SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

.field private static final SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

.field private static final TAG:Ljava/lang/String; = "SettingsStatsUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 47
    new-instance v0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v1, "GlobalFeature__boolean_whitelist"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v3, "GlobalFeature__integer_whitelist"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "GlobalFeature__float_whitelist"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v7, "GlobalFeature__string_whitelist"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v3, v5}, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/SettingsStatsUtil;->GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 57
    new-instance v0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v1, "SecureFeature__boolean_whitelist"

    invoke-direct {v0, v1, v2}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v3, "SecureFeature__integer_whitelist"

    invoke-direct {v1, v3, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "SecureFeature__float_whitelist"

    invoke-direct {v3, v5, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v7, "SecureFeature__string_whitelist"

    invoke-direct {v5, v7, v8}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v3, v5}, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/SettingsStatsUtil;->SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 67
    new-instance v0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v1, "SystemFeature__boolean_whitelist"

    invoke-direct {v0, v1, v2}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v2, "SystemFeature__integer_whitelist"

    invoke-direct {v1, v2, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v3, "SystemFeature__float_whitelist"

    invoke-direct {v2, v3, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v4, "SystemFeature__string_whitelist"

    invoke-direct {v3, v4, v8}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/SettingsStatsUtil;->SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createStatsEvent(ILjava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;
    .locals 9
    .param p0, "atomTag"    # I
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "type"    # I

    .line 161
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 164
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    const/4 v1, 0x0

    .line 165
    .local v1, "booleanValue":Z
    const/4 v2, 0x0

    .line 166
    .local v2, "intValue":I
    const/4 v3, 0x0

    .line 167
    .local v3, "floatValue":F
    const-string v4, ""

    .line 168
    .local v4, "stringValue":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 170
    invoke-virtual {v5, v1}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 171
    invoke-virtual {v5, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 172
    invoke-virtual {v5, v3}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 173
    invoke-virtual {v5, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 174
    invoke-virtual {v5, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/16 :goto_1

    .line 176
    :cond_0
    const-string v5, "Can not parse value to float: "

    const-string v6, "SettingsStatsUtil"

    packed-switch p4, :pswitch_data_0

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected value type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :pswitch_0
    move-object v4, p2

    .line 196
    goto :goto_0

    .line 189
    :pswitch_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    .line 192
    goto :goto_0

    .line 190
    :catch_0
    move-exception v7

    .line 191
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 182
    :pswitch_2
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v5

    .line 185
    goto :goto_0

    .line 183
    :catch_1
    move-exception v7

    .line 184
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 178
    :pswitch_3
    const-string v5, "1"

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 179
    nop

    .line 200
    :goto_0
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 201
    invoke-virtual {v5, v1}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 202
    invoke-virtual {v5, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 203
    invoke-virtual {v5, v3}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 204
    invoke-virtual {v5, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 205
    invoke-virtual {v5, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 207
    :goto_1
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v5

    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;
    .locals 6
    .param p0, "flag"    # Ljava/lang/String;

    .line 141
    const-string/jumbo v0, "settings_stats"

    invoke-static {v0, p0}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "base64":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const/4 v1, 0x0

    return-object v1

    .line 145
    :cond_0
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 146
    .local v1, "decode":[B
    const/4 v2, 0x0

    .line 148
    .local v2, "list":Lcom/android/service/nano/StringListParamProto;
    :try_start_0
    invoke-static {v1}, Lcom/android/service/nano/StringListParamProto;->parseFrom([B)Lcom/android/service/nano/StringListParamProto;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 151
    goto :goto_0

    .line 149
    :catch_0
    move-exception v3

    .line 150
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SettingsStatsUtil"

    const-string v5, "Error parsing string list proto"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v2
.end method

.method static logGlobalSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "atomTag"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;"
        }
    .end annotation

    .line 81
    move/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "output":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 84
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/server/stats/pull/SettingsStatsUtil;->GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 85
    .local v7, "flagsData":Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
    iget-object v8, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v8

    .line 86
    .local v8, "proto":Lcom/android/service/nano/StringListParamProto;
    if-nez v8, :cond_0

    .line 87
    move/from16 v15, p1

    goto :goto_2

    .line 89
    :cond_0
    iget-object v9, v8, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v10, v9

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 90
    .local v12, "key":Ljava/lang/String;
    invoke-static {v2, v12, v0}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 91
    .local v13, "value":Ljava/lang/String;
    iget v14, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    move/from16 v15, p1

    invoke-static {v15, v12, v13, v0, v14}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(ILjava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move/from16 v15, p1

    .line 84
    .end local v7    # "flagsData":Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
    .end local v8    # "proto":Lcom/android/service/nano/StringListParamProto;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 95
    :cond_2
    move/from16 v15, p1

    return-object v1
.end method

.method static logSecureSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "atomTag"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;"
        }
    .end annotation

    .line 121
    move/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v1, "output":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 124
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/server/stats/pull/SettingsStatsUtil;->SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 125
    .local v7, "flagsData":Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
    iget-object v8, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v8

    .line 126
    .local v8, "proto":Lcom/android/service/nano/StringListParamProto;
    if-nez v8, :cond_0

    .line 127
    move/from16 v15, p1

    goto :goto_2

    .line 129
    :cond_0
    iget-object v9, v8, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v10, v9

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 130
    .local v12, "key":Ljava/lang/String;
    invoke-static {v2, v12, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 131
    .local v13, "value":Ljava/lang/String;
    iget v14, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    move/from16 v15, p1

    invoke-static {v15, v12, v13, v0, v14}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(ILjava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move/from16 v15, p1

    .line 124
    .end local v7    # "flagsData":Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
    .end local v8    # "proto":Lcom/android/service/nano/StringListParamProto;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 135
    :cond_2
    move/from16 v15, p1

    return-object v1
.end method

.method static logSystemSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "atomTag"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;"
        }
    .end annotation

    .line 100
    move/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "output":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 103
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/server/stats/pull/SettingsStatsUtil;->SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 104
    .local v7, "flagsData":Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
    iget-object v8, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v8

    .line 105
    .local v8, "proto":Lcom/android/service/nano/StringListParamProto;
    if-nez v8, :cond_0

    .line 106
    move-object/from16 v14, p0

    move-object/from16 v16, v2

    move/from16 v2, p1

    goto :goto_2

    .line 108
    :cond_0
    iget-object v9, v8, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 109
    .local v12, "key":Ljava/lang/String;
    invoke-static {v2, v12, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 110
    .local v13, "value":Ljava/lang/String;
    nop

    .line 111
    move-object/from16 v14, p0

    invoke-static {v14, v12, v13}, Lcom/android/server/stats/pull/RawSettingsTelemetryUtils;->getTelemetrySettingFromRawVal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 112
    .local v15, "telemetryValue":Ljava/lang/String;
    iget v5, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    move-object/from16 v16, v2

    move/from16 v2, p1

    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .local v16, "resolver":Landroid/content/ContentResolver;
    invoke-static {v2, v12, v15, v0, v5}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(ILjava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    .end local v15    # "telemetryValue":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    goto :goto_1

    .end local v16    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    move-object/from16 v14, p0

    move-object/from16 v16, v2

    move/from16 v2, p1

    .line 103
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "flagsData":Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
    .end local v8    # "proto":Lcom/android/service/nano/StringListParamProto;
    .restart local v16    # "resolver":Landroid/content/ContentResolver;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v16

    goto :goto_0

    .line 116
    .end local v16    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    return-object v1
.end method
