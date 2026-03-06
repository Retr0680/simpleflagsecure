.class public Lcom/android/server/wm/AppCompatOverrides;
.super Ljava/lang/Object;
.source "AppCompatOverrides.java"


# instance fields
.field private final mAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

.field private final mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

.field private final mFocusOverrides:Lcom/android/server/wm/AppCompatFocusOverrides;

.field private final mLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

.field private final mOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

.field private final mReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

.field private final mResizeOverrides:Lcom/android/server/wm/AppCompatResizeOverrides;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatDeviceStateQuery;)V
    .locals 7
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "appCompatConfiguration"    # Lcom/android/server/wm/AppCompatConfiguration;
    .param p4, "optPropBuilder"    # Lcom/android/server/wm/utils/OptPropFactory;
    .param p5, "appCompatDeviceStateQuery"    # Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/server/wm/AppCompatCameraOverrides;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/server/wm/AppCompatCameraOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 51
    new-instance v0, Lcom/android/server/wm/AppCompatOrientationOverrides;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    invoke-direct {v0, p1, p3, p4, v1}, Lcom/android/server/wm/AppCompatOrientationOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatCameraOverrides;)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatOverrides;->mOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

    .line 53
    new-instance v0, Lcom/android/server/wm/AppCompatReachabilityOverrides;

    invoke-direct {v0, p1, p3, p5}, Lcom/android/server/wm/AppCompatReachabilityOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/AppCompatDeviceStateQuery;)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatOverrides;->mReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    .line 55
    new-instance v1, Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    iget-object v6, p0, Lcom/android/server/wm/AppCompatOverrides;->mReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    .end local p3    # "appCompatConfiguration":Lcom/android/server/wm/AppCompatConfiguration;
    .end local p4    # "optPropBuilder":Lcom/android/server/wm/utils/OptPropFactory;
    .end local p5    # "appCompatDeviceStateQuery":Lcom/android/server/wm/AppCompatDeviceStateQuery;
    .local v2, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    .local v3, "appCompatConfiguration":Lcom/android/server/wm/AppCompatConfiguration;
    .local v4, "optPropBuilder":Lcom/android/server/wm/utils/OptPropFactory;
    .local v5, "appCompatDeviceStateQuery":Lcom/android/server/wm/AppCompatDeviceStateQuery;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatDeviceStateQuery;Lcom/android/server/wm/AppCompatReachabilityOverrides;)V

    iput-object v1, p0, Lcom/android/server/wm/AppCompatOverrides;->mAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    .line 58
    new-instance p1, Lcom/android/server/wm/AppCompatFocusOverrides;

    invoke-direct {p1, v2, v3, v4}, Lcom/android/server/wm/AppCompatFocusOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOverrides;->mFocusOverrides:Lcom/android/server/wm/AppCompatFocusOverrides;

    .line 60
    new-instance p1, Lcom/android/server/wm/AppCompatResizeOverrides;

    invoke-direct {p1, v2, p2, v4}, Lcom/android/server/wm/AppCompatResizeOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;Lcom/android/server/wm/utils/OptPropFactory;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOverrides;->mResizeOverrides:Lcom/android/server/wm/AppCompatResizeOverrides;

    .line 62
    new-instance p1, Lcom/android/server/wm/AppCompatLetterboxOverrides;

    invoke-direct {p1, v2, v3}, Lcom/android/server/wm/AppCompatLetterboxOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOverrides;->mLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 64
    return-void
.end method


# virtual methods
.method getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    return-object v0
.end method

.method getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    return-object v0
.end method

.method getFocusOverrides()Lcom/android/server/wm/AppCompatFocusOverrides;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOverrides;->mFocusOverrides:Lcom/android/server/wm/AppCompatFocusOverrides;

    return-object v0
.end method

.method getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOverrides;->mLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    return-object v0
.end method

.method getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOverrides;->mOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

    return-object v0
.end method

.method getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOverrides;->mReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    return-object v0
.end method

.method getResizeOverrides()Lcom/android/server/wm/AppCompatResizeOverrides;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOverrides;->mResizeOverrides:Lcom/android/server/wm/AppCompatResizeOverrides;

    return-object v0
.end method
