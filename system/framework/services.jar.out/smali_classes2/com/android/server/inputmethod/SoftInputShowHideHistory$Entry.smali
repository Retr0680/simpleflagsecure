.class final Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;
.super Ljava/lang/Object;
.source "SoftInputShowHideHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/SoftInputShowHideHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation


# instance fields
.field final mClientState:Lcom/android/server/inputmethod/ClientState;

.field final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field final mFocusedWindowName:Ljava/lang/String;

.field final mFocusedWindowSoftInputMode:I

.field final mImeControlTargetName:Ljava/lang/String;

.field final mImeSurfaceParentName:Ljava/lang/String;

.field final mImeTargetNameFromWm:Ljava/lang/String;

.field final mImeUserId:I

.field final mInFullscreenMode:Z

.field final mReason:I

.field final mRequestWindowName:Ljava/lang/String;

.field final mSequenceNumber:I

.field final mTimestamp:J

.field final mWallTime:J


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "client"    # Lcom/android/server/inputmethod/ClientState;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "focusedWindowName"    # Ljava/lang/String;
    .param p4, "softInputMode"    # I
    .param p5, "reason"    # I
    .param p6, "inFullscreenMode"    # Z
    .param p7, "requestWindowName"    # Ljava/lang/String;
    .param p8, "imeControlTargetName"    # Ljava/lang/String;
    .param p9, "imeTargetName"    # Ljava/lang/String;
    .param p10, "imeSurfaceParentName"    # Ljava/lang/String;
    .param p11, "imeUserId"    # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->-$$Nest$sfgetsSequenceNumber()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mSequenceNumber:I

    .line 76
    iput-object p1, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mClientState:Lcom/android/server/inputmethod/ClientState;

    .line 77
    iput-object p2, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 78
    iput-object p3, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mFocusedWindowName:Ljava/lang/String;

    .line 79
    iput p4, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mFocusedWindowSoftInputMode:I

    .line 80
    iput p5, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mReason:I

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mTimestamp:J

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mWallTime:J

    .line 83
    iput-boolean p6, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mInFullscreenMode:Z

    .line 84
    iput-object p7, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mRequestWindowName:Ljava/lang/String;

    .line 85
    iput-object p8, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mImeControlTargetName:Ljava/lang/String;

    .line 86
    iput-object p9, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mImeTargetNameFromWm:Ljava/lang/String;

    .line 87
    iput-object p10, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mImeSurfaceParentName:Ljava/lang/String;

    .line 88
    iput p11, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mImeUserId:I

    .line 89
    return-void
.end method
