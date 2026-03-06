.class final Lcom/android/server/media/quality/MediaQualityService$UserState;
.super Ljava/lang/Object;
.source "MediaQualityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/quality/MediaQualityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserState"
.end annotation


# instance fields
.field private final mActiveProcessingPictureCallbackList:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

.field private final mActiveProcessingPictureListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/quality/IActiveProcessingPictureListener;",
            "Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPictureProfileCallbackPidUidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/quality/IPictureProfileCallback;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPictureProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

.field private final mSoundProfileCallbackPidUidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/quality/ISoundProfileCallback;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSoundProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

.field final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActiveProcessingPictureCallbackList(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mActiveProcessingPictureCallbackList:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActiveProcessingPictureListenerMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mActiveProcessingPictureListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPictureProfileCallbackPidUidMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mPictureProfileCallbackPidUidMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mPictureProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoundProfileCallbackPidUidMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mSoundProfileCallbackPidUidMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mSoundProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    return-object p0
.end method

.method private constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Landroid/content/Context;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1355
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1337
    new-instance p1, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;-><init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mPictureProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    .line 1340
    new-instance p1, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p1, v0, v1}, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;-><init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mSoundProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    .line 1343
    new-instance p1, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p1, v0, v1}, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;-><init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mActiveProcessingPictureCallbackList:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    .line 1346
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mPictureProfileCallbackPidUidMap:Ljava/util/Map;

    .line 1349
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mSoundProfileCallbackPidUidMap:Ljava/util/Map;

    .line 1352
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$UserState;->mActiveProcessingPictureListenerMap:Ljava/util/Map;

    .line 1357
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Landroid/content/Context;ILcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService$UserState;-><init>(Lcom/android/server/media/quality/MediaQualityService;Landroid/content/Context;I)V

    return-void
.end method
