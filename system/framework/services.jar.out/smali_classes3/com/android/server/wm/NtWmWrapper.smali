.class public Lcom/android/server/wm/NtWmWrapper;
.super Ljava/lang/Object;
.source "NtWmWrapper.java"


# instance fields
.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/wm/NtWmWrapper;->mObject:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/server/wm/NtWmWrapper;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/server/wm/NtWmWrapper;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method public getTask()Lcom/android/server/wm/Task;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/server/wm/NtWmWrapper;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/Task;

    return-object v0
.end method

.method public getWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/server/wm/NtWmWrapper;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    return-object v0
.end method
