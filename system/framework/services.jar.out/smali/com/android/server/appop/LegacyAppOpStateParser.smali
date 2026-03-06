.class Lcom/android/server/appop/LegacyAppOpStateParser;
.super Ljava/lang/Object;
.source "LegacyAppOpStateParser.java"


# static fields
.field private static final NO_FILE_VERSION:I = -0x2

.field private static final NO_VERSION:I = -0x1

.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/android/server/appop/LegacyAppOpStateParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readOp(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Landroid/util/SparseArray;)V
    .locals 6
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p2, "userId"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 285
    .local p4, "userPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    const-string/jumbo v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 286
    .local v0, "opCode":I
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    .line 287
    .local v2, "defaultMode":I
    const-string/jumbo v3, "m"

    invoke-interface {p1, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 291
    .local v1, "mode":I
    sget-object v3, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_APPOPS_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v3}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/INtAppopsService;

    .line 292
    invoke-interface {v3, v0}, Lcom/android/server/appop/INtAppopsService;->readOnlyNt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    return-void

    .line 297
    :cond_0
    if-eq v1, v2, :cond_3

    .line 298
    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 299
    .local v3, "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v3, :cond_1

    .line 300
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v4

    .line 301
    invoke-virtual {p4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    :cond_1
    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    .line 305
    .local v4, "modes":Landroid/util/SparseIntArray;
    if-nez v4, :cond_2

    .line 306
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    move-object v4, v5

    .line 307
    invoke-virtual {v3, p3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_2
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 312
    .end local v3    # "packageModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v4    # "modes":Landroid/util/SparseIntArray;
    :cond_3
    return-void
.end method

.method private readPackage(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V
    .locals 7
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    .local p2, "userPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 145
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    nop

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 146
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 147
    :cond_1
    nop

    nop

    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 148
    goto :goto_0

    .line 151
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/appop/LegacyAppOpStateParser;->readPackageUid(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 155
    :cond_3
    sget-object v4, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 159
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 160
    :cond_4
    return-void
.end method

.method private readPackageOp(Lcom/android/modules/utils/TypedXmlPullParser;ILandroid/util/SparseArray;)V
    .locals 7
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "I",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    .local p3, "userPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 265
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    nop

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 266
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 267
    :cond_1
    nop

    nop

    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 268
    goto :goto_0

    .line 271
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "op"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 273
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/appop/LegacyAppOpStateParser;->readOp(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 275
    :cond_3
    sget-object v4, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 275
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 279
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 280
    :cond_4
    return-void
.end method

.method private readPackageUid(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 7
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    .local p3, "userPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 166
    .local v0, "userId":I
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 168
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    nop

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 169
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 170
    :cond_1
    nop

    nop

    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 171
    goto :goto_0

    .line 174
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "op"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/appop/LegacyAppOpStateParser;->readOp(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 178
    :cond_3
    sget-object v4, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 178
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 182
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 183
    :cond_4
    return-void
.end method

.method private readUidOps(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V
    .locals 11
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    .local p2, "uidModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 189
    .local v2, "uid":I
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 190
    .local v3, "modes":Landroid/util/SparseIntArray;
    if-nez v3, :cond_0

    .line 191
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    move-object v3, v4

    .line 192
    invoke-virtual {p2, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    :cond_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    .line 197
    .local v4, "outerDepth":I
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    nop

    if-eq v5, v7, :cond_6

    const/4 v5, 0x3

    if-ne v6, v5, :cond_2

    .line 198
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_6

    .line 199
    :cond_2
    nop

    nop

    if-eq v6, v5, :cond_1

    const/4 v5, 0x4

    if-ne v6, v5, :cond_3

    .line 200
    goto :goto_0

    .line 203
    :cond_3
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "op"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 205
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 214
    .local v7, "code":I
    :try_start_0
    const-string/jumbo v8, "m"

    invoke-interface {p1, v0, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .local v8, "mode":I
    nop

    .line 224
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 225
    invoke-virtual {v3, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 227
    .end local v7    # "code":I
    .end local v8    # "mode":I
    :cond_4
    goto :goto_1

    .line 215
    .restart local v7    # "code":I
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readUidOps failed: uid="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", code= "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "msg":Ljava/lang/String;
    sget-object v8, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v8, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_APPOPS_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v8}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/INtAppopsService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 219
    invoke-interface {v8, v9}, Lcom/android/server/appop/INtAppopsService;->addAppOpsLogRecord(Ljava/lang/String;)V

    .line 220
    throw v0

    .line 228
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v7    # "code":I
    :cond_5
    sget-object v7, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element under <uid>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 228
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 232
    .end local v5    # "tagName":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 233
    :cond_6
    return-void
.end method

.method private readUser(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V
    .locals 7
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    .local p2, "userPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 239
    .local v0, "userId":I
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 241
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    nop

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 242
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 243
    :cond_1
    nop

    nop

    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 244
    goto :goto_0

    .line 247
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "pkg"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 249
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/appop/LegacyAppOpStateParser;->readPackageOp(Lcom/android/modules/utils/TypedXmlPullParser;ILandroid/util/SparseArray;)V

    goto :goto_1

    .line 251
    :cond_3
    sget-object v4, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <user>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 251
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 255
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 256
    :cond_4
    return-void
.end method


# virtual methods
.method public readPackageInner(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    .local p2, "userPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/LegacyAppOpStateParser;->readPackage(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V

    .line 320
    return-void
.end method

.method public readState(Landroid/util/AtomicFile;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    .locals 12
    .param p1, "file"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/AtomicFile;",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;>;)I"
        }
    .end annotation

    .line 58
    .local p2, "uidModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .local p3, "userPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .local v0, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 60
    .local v1, "parsedUidModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 63
    .local v2, "parsedUserPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    .line 65
    .local v3, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    :goto_0
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v6, :cond_0

    if-eq v5, v7, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    if-ne v5, v6, :cond_b

    .line 74
    const-string/jumbo v4, "v"

    const/4 v6, -0x1

    const/4 v8, 0x0

    invoke-interface {v3, v8, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 76
    .local v4, "versionAtBoot":I
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    .line 77
    .local v6, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    move v5, v8

    nop

    if-eq v8, v7, :cond_7

    const/4 v8, 0x3

    if-ne v5, v8, :cond_2

    .line 78
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_7

    goto :goto_2

    .line 58
    .end local v1    # "parsedUidModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v2    # "parsedUserPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    .end local v3    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v4    # "versionAtBoot":I
    .end local v5    # "type":I
    .end local v6    # "outerDepth":I
    :catchall_0
    move-exception v1

    goto/16 :goto_7

    .line 79
    .restart local v1    # "parsedUidModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v2    # "parsedUserPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    .restart local v3    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v4    # "versionAtBoot":I
    .restart local v5    # "type":I
    .restart local v6    # "outerDepth":I
    :cond_2
    :goto_2
    nop

    nop

    if-eq v5, v8, :cond_1

    const/4 v8, 0x4

    if-ne v5, v8, :cond_3

    .line 80
    goto :goto_1

    .line 83
    :cond_3
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "pkg"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 88
    invoke-direct {p0, v3, v2}, Lcom/android/server/appop/LegacyAppOpStateParser;->readPackage(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V

    goto :goto_3

    .line 89
    :cond_4
    const-string/jumbo v9, "uid"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 90
    invoke-direct {p0, v3, v1}, Lcom/android/server/appop/LegacyAppOpStateParser;->readUidOps(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V

    goto :goto_3

    .line 91
    :cond_5
    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 92
    invoke-direct {p0, v3, v2}, Lcom/android/server/appop/LegacyAppOpStateParser;->readUser(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V

    goto :goto_3

    .line 94
    :cond_6
    sget-object v9, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <app-ops>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 94
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 98
    .end local v8    # "tagName":Ljava/lang/String;
    :goto_3
    goto :goto_1

    .line 101
    :cond_7
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 102
    .local v7, "parsedUidModesSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    if-ge v8, v7, :cond_8

    .line 103
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseIntArray;

    invoke-virtual {p2, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    nop

    .line 105
    .end local v8    # "i":I
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 106
    .local v8, "parsedUserPackageModesSize":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5
    if-ge v9, v8, :cond_9

    .line 107
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 108
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    .line 107
    invoke-virtual {p3, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    nop

    .line 111
    .end local v9    # "i":I
    nop

    .line 112
    if-eqz v0, :cond_a

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 125
    .end local v0    # "stream":Ljava/io/FileInputStream;
    .end local v1    # "parsedUidModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v2    # "parsedUserPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    .end local v3    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v4    # "versionAtBoot":I
    .end local v5    # "type":I
    .end local v6    # "outerDepth":I
    .end local v7    # "parsedUidModesSize":I
    .end local v8    # "parsedUserPackageModesSize":I
    :catch_0
    move-exception v0

    goto :goto_9

    .line 114
    :catch_1
    move-exception v0

    goto :goto_a

    .line 112
    :catch_2
    move-exception v0

    goto :goto_c

    .line 111
    .restart local v0    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "parsedUidModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v2    # "parsedUserPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    .restart local v3    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v4    # "versionAtBoot":I
    .restart local v5    # "type":I
    .restart local v6    # "outerDepth":I
    .restart local v7    # "parsedUidModesSize":I
    .restart local v8    # "parsedUserPackageModesSize":I
    :cond_a
    :goto_6
    return v4

    .line 71
    .end local v4    # "versionAtBoot":I
    .end local v6    # "outerDepth":I
    .end local v7    # "parsedUidModesSize":I
    .end local v8    # "parsedUserPackageModesSize":I
    :cond_b
    :try_start_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "no start tag found"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/appop/LegacyAppOpStateParser;
    .end local p1    # "file":Landroid/util/AtomicFile;
    .end local p2    # "uidModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local p3    # "userPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    .end local v1    # "parsedUidModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v2    # "parsedUserPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    .end local v3    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v5    # "type":I
    .restart local v0    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/appop/LegacyAppOpStateParser;
    .restart local p1    # "file":Landroid/util/AtomicFile;
    .restart local p2    # "uidModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local p3    # "userPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    :goto_7
    if-eqz v0, :cond_c

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_8
    nop

    .end local p0    # "this":Lcom/android/server/appop/LegacyAppOpStateParser;
    .end local p1    # "file":Landroid/util/AtomicFile;
    .end local p2    # "uidModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local p3    # "userPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    throw v1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 125
    .end local v0    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/appop/LegacyAppOpStateParser;
    .restart local p1    # "file":Landroid/util/AtomicFile;
    .restart local p2    # "uidModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local p3    # "userPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    :goto_9
    nop

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    nop

    .line 121
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v1, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    const-string v2, "Failed parsing"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    sget-object v1, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_APPOPS_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v1}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/INtAppopsService;

    .line 123
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/appop/INtAppopsService;->copyAppopsFile(Ljava/io/File;)V

    .line 128
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_b
    goto :goto_d

    .line 112
    :goto_c
    nop

    .line 113
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No existing app ops "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; starting empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_b

    .line 131
    :goto_d
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_APPOPS_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/INtAppopsService;

    .line 132
    const-string v1, " -> readState failed"

    invoke-interface {v0, v1}, Lcom/android/server/appop/INtAppopsService;->addAppOpsLogRecord(Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_APPOPS_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/INtAppopsService;

    .line 134
    invoke-interface {v0, p0, p1, p3}, Lcom/android/server/appop/INtAppopsService;->readNtPackageOpsOnly(Lcom/android/server/appop/LegacyAppOpStateParser;Landroid/util/AtomicFile;Landroid/util/SparseArray;)Z

    .line 136
    const/4 v0, -0x2

    return v0
.end method
