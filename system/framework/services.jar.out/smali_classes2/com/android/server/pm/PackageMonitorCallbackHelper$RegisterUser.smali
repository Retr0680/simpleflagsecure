.class final Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;
.super Ljava/lang/Object;
.source "PackageMonitorCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageMonitorCallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RegisterUser"
.end annotation


# instance fields
.field mUid:I

.field mUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageMonitorCallbackHelper;II)V
    .locals 0
    .param p2, "userId"    # I
    .param p3, "uid"    # I
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

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput p3, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->mUid:I

    .line 293
    iput p2, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->mUserId:I

    .line 294
    return-void
.end method


# virtual methods
.method public getUid()I
    .locals 1

    .line 297
    iget v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->mUid:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->mUserId:I

    return v0
.end method
