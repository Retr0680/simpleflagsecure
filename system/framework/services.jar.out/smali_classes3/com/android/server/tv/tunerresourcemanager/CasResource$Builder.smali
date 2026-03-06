.class public Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;
.super Ljava/lang/Object;
.source "CasResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/CasResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mHandle:J

.field protected mMaxSessionNum:I

.field private mSystemId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandle(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mHandle:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemId(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mSystemId:I

    return p0
.end method

.method constructor <init>(JI)V
    .locals 0
    .param p1, "handle"    # J
    .param p3, "systemId"    # I

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-wide p1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mHandle:J

    .line 155
    iput p3, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mSystemId:I

    .line 156
    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .locals 1

    .line 174
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;

    invoke-direct {v0, p0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)V

    .line 175
    .local v0, "cas":Lcom/android/server/tv/tunerresourcemanager/CasResource;
    return-object v0
.end method

.method public maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;
    .locals 0
    .param p1, "maxSessionNum"    # I

    .line 164
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mMaxSessionNum:I

    .line 165
    return-object p0
.end method
