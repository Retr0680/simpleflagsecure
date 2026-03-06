.class Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;
.super Ljava/lang/Object;
.source "AppCompatReachabilityOverrides.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppCompatReachabilityOverrides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReachabilityState"
.end annotation


# instance fields
.field private mIsDoubleTapEvent:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsDoubleTapEvent(Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsDoubleTapEvent(Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/AppCompatReachabilityOverrides-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;-><init>()V

    return-void
.end method


# virtual methods
.method isFromDoubleTap()Z
    .locals 2

    .line 326
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    .line 327
    .local v0, "isFromDoubleTap":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    .line 328
    return v0
.end method
