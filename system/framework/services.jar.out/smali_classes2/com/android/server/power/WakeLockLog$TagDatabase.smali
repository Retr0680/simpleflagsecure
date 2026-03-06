.class Lcom/android/server/power/WakeLockLog$TagDatabase;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TagDatabase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;
    }
.end annotation


# instance fields
.field private mArray:[Lcom/android/server/power/WakeLockLog$TagData;

.field private mCallback:Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

.field private final mInvalidIndex:I

.field private final mMaxArraySize:I


# direct methods
.method constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;)V
    .locals 2
    .param p1, "injector"    # Lcom/android/server/power/WakeLockLog$Injector;

    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    invoke-virtual {p1}, Lcom/android/server/power/WakeLockLog$Injector;->getTagDatabaseSize()I

    move-result v0

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mMaxArraySize:I

    .line 1172
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mMaxArraySize:I

    invoke-virtual {p1}, Lcom/android/server/power/WakeLockLog$Injector;->getTagDatabaseStartingSize()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1173
    .local v0, "startingSize":I
    new-array v1, v0, [Lcom/android/server/power/WakeLockLog$TagData;

    iput-object v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    .line 1174
    iget v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mMaxArraySize:I

    iput v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    .line 1175
    return-void
.end method

.method private setToIndex(Lcom/android/server/power/WakeLockLog$TagData;I)V
    .locals 2
    .param p1, "tag"    # Lcom/android/server/power/WakeLockLog$TagData;
    .param p2, "index"    # I

    .line 1331
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v0, v0

    if-lt p2, v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1334
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    aget-object v0, v0, p2

    .line 1335
    .local v0, "current":Lcom/android/server/power/WakeLockLog$TagData;
    if-eqz v0, :cond_2

    .line 1337
    iget v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    iput v1, v0, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    .line 1345
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    aput-object p1, v1, p2

    .line 1346
    iput p2, p1, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    .line 1347
    return-void

    .line 1332
    .end local v0    # "current":Lcom/android/server/power/WakeLockLog$TagData;
    :goto_0
    return-void
.end method

.method public static updateTagTime(Lcom/android/server/power/WakeLockLog$TagData;J)V
    .locals 0
    .param p0, "tag"    # Lcom/android/server/power/WakeLockLog$TagData;
    .param p1, "time"    # J

    .line 1322
    if-eqz p0, :cond_0

    .line 1323
    iput-wide p1, p0, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    .line 1325
    :cond_0
    return-void
.end method


# virtual methods
.method public findOrCreateTag(Ljava/lang/String;IZ)Lcom/android/server/power/WakeLockLog$TagData;
    .locals 10
    .param p1, "tagStr"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "shouldCreate"    # Z

    .line 1261
    const/4 v0, -0x1

    .line 1262
    .local v0, "firstAvailable":I
    const/4 v1, 0x0

    .line 1263
    .local v1, "oldest":Lcom/android/server/power/WakeLockLog$TagData;
    const/4 v2, -0x1

    .line 1266
    .local v2, "oldestIndex":I
    new-instance v3, Lcom/android/server/power/WakeLockLog$TagData;

    invoke-direct {v3, p1, p2}, Lcom/android/server/power/WakeLockLog$TagData;-><init>(Ljava/lang/String;I)V

    .line 1267
    .local v3, "tag":Lcom/android/server/power/WakeLockLog$TagData;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v5, v5

    const/4 v6, -0x1

    if-ge v4, v5, :cond_5

    .line 1268
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    aget-object v5, v5, v4

    .line 1269
    .local v5, "current":Lcom/android/server/power/WakeLockLog$TagData;
    invoke-virtual {v3, v5}, Lcom/android/server/power/WakeLockLog$TagData;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1271
    return-object v5

    .line 1272
    :cond_0
    if-nez p3, :cond_1

    .line 1273
    goto :goto_1

    .line 1274
    :cond_1
    if-eqz v5, :cond_3

    .line 1277
    if-eqz v1, :cond_2

    iget-wide v6, v5, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    iget-wide v8, v1, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 1278
    :cond_2
    move v2, v4

    .line 1279
    move-object v1, v5

    goto :goto_1

    .line 1281
    :cond_3
    if-ne v0, v6, :cond_4

    .line 1282
    move v0, v4

    .line 1267
    .end local v5    # "current":Lcom/android/server/power/WakeLockLog$TagData;
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    nop

    .line 1287
    .end local v4    # "i":I
    if-nez p3, :cond_6

    .line 1288
    const/4 v4, 0x0

    return-object v4

    .line 1292
    :cond_6
    const/4 v4, 0x0

    if-ne v0, v6, :cond_7

    .line 1293
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v5, v5

    iget v7, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mMaxArraySize:I

    if-ge v5, v7, :cond_7

    .line 1294
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v5, v5

    .line 1295
    .local v5, "oldSize":I
    mul-int/lit8 v7, v5, 0x2

    iget v8, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mMaxArraySize:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1296
    .local v7, "newSize":I
    new-array v8, v7, [Lcom/android/server/power/WakeLockLog$TagData;

    .line 1297
    .local v8, "newArray":[Lcom/android/server/power/WakeLockLog$TagData;
    iget-object v9, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    invoke-static {v9, v4, v8, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1298
    iput-object v8, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    .line 1299
    move v0, v5

    .line 1304
    .end local v5    # "oldSize":I
    .end local v7    # "newSize":I
    .end local v8    # "newArray":[Lcom/android/server/power/WakeLockLog$TagData;
    :cond_7
    if-ne v0, v6, :cond_8

    const/4 v4, 0x1

    .line 1305
    .local v4, "useOldest":Z
    :cond_8
    if-eqz v4, :cond_9

    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mCallback:Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

    if-eqz v5, :cond_9

    .line 1309
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mCallback:Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

    invoke-interface {v5, v2}, Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;->onIndexRemoved(I)V

    .line 1311
    :cond_9
    if-eq v0, v6, :cond_a

    move v5, v0

    goto :goto_2

    :cond_a
    move v5, v2

    :goto_2
    invoke-direct {p0, v3, v5}, Lcom/android/server/power/WakeLockLog$TagDatabase;->setToIndex(Lcom/android/server/power/WakeLockLog$TagData;I)V

    .line 1312
    return-object v3
.end method

.method public getTag(I)Lcom/android/server/power/WakeLockLog$TagData;
    .locals 1
    .param p1, "index"    # I

    .line 1223
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    if-ne p1, v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1226
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    aget-object v0, v0, p1

    return-object v0

    .line 1224
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag(Ljava/lang/String;I)Lcom/android/server/power/WakeLockLog$TagData;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I

    .line 1237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/WakeLockLog$TagDatabase;->findOrCreateTag(Ljava/lang/String;IZ)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v0

    return-object v0
.end method

.method public getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I
    .locals 1
    .param p1, "tagData"    # Lcom/android/server/power/WakeLockLog$TagData;

    .line 1247
    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    :goto_0
    return v0
.end method

.method public setCallback(Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

    .line 1214
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mCallback:Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

    .line 1215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1180
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Tag Database: size("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    const/4 v1, 0x0

    .line 1182
    .local v1, "entries":I
    const/4 v2, 0x0

    .line 1183
    .local v2, "byteEstimate":I
    const/4 v3, 0x0

    .line 1184
    .local v3, "tagSize":I
    const/4 v4, 0x0

    .line 1185
    .local v4, "tags":I
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 1186
    .local v8, "tagData":Lcom/android/server/power/WakeLockLog$TagData;
    add-int/lit8 v2, v2, 0x8

    .line 1187
    move-object v9, v8

    .line 1188
    .local v9, "data":Lcom/android/server/power/WakeLockLog$TagData;
    if-eqz v9, :cond_0

    .line 1189
    add-int/lit8 v1, v1, 0x1

    .line 1190
    invoke-virtual {v9}, Lcom/android/server/power/WakeLockLog$TagData;->getByteSize()I

    move-result v10

    add-int/2addr v2, v10

    .line 1191
    iget-object v10, v9, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 1192
    add-int/lit8 v4, v4, 0x1

    .line 1193
    iget-object v10, v9, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v3, v10

    .line 1185
    .end local v8    # "tagData":Lcom/android/server/power/WakeLockLog$TagData;
    .end local v9    # "data":Lcom/android/server/power/WakeLockLog$TagData;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1197
    :cond_1
    const-string v5, ", entries: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1198
    const-string v5, ", Bytes used: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
