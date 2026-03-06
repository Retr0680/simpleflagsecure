.class Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mClipDataUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mComponent:Landroid/content/ComponentName;

.field private final mCreatorPackage:Ljava/lang/String;

.field private final mCreatorUid:I

.field private final mData:Landroid/net/Uri;

.field private final mFlags:I

.field private final mPackage:Ljava/lang/String;

.field private final mType:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCreatorPackage(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCreatorUid(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    return p0
.end method

.method private constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "creatorUid"    # I
    .param p2, "creatorPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 20138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20139
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    .line 20140
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    .line 20141
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mAction:Ljava/lang/String;

    .line 20142
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mData:Landroid/net/Uri;

    .line 20143
    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mType:Ljava/lang/String;

    .line 20144
    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mPackage:Ljava/lang/String;

    .line 20145
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mComponent:Landroid/content/ComponentName;

    .line 20146
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0xc3

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mFlags:I

    .line 20147
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 20148
    .local v0, "clipData":Landroid/content/ClipData;
    if-eqz v0, :cond_0

    .line 20149
    invoke-virtual {v0}, Landroid/content/ClipData;->cloneOnlyUriItems()Landroid/content/ClipData;

    move-result-object v0

    .line 20150
    if-eqz v0, :cond_0

    .line 20151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20152
    .local v1, "clipDataUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    .line 20153
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 20154
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mClipDataUris:Ljava/util/List;

    .line 20158
    .end local v1    # "clipDataUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/ActivityManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 20172
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 20173
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_1

    .line 20174
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    .line 20175
    .local v2, "key":Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;
    iget v3, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    iget v4, v2, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mFlags:I

    iget v4, v2, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mFlags:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    .line 20176
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mAction:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mAction:Ljava/lang/String;

    .line 20177
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mData:Landroid/net/Uri;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mData:Landroid/net/Uri;

    .line 20178
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mType:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mType:Ljava/lang/String;

    .line 20179
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mPackage:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mPackage:Ljava/lang/String;

    .line 20180
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mComponent:Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mComponent:Landroid/content/ComponentName;

    .line 20181
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mClipDataUris:Ljava/util/List;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mClipDataUris:Ljava/util/List;

    .line 20182
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 20175
    :goto_0
    return v0

    .line 20173
    .end local v2    # "key":Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 10

    .line 20187
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mAction:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mData:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mPackage:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mComponent:Landroid/content/ComponentName;

    iget v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mFlags:I

    .line 20188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mClipDataUris:Ljava/util/List;

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 20187
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
