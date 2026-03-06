.class Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;
.super Ljava/lang/Object;
.source "AppCompatCameraOverrides.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppCompatCameraOverrides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppCompatCameraOverridesState"
.end annotation


# instance fields
.field private mIsRefreshRequested:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsRefreshRequested(Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->mIsRefreshRequested:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsRefreshRequested(Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->mIsRefreshRequested:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
