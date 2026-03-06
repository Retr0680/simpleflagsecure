.class public interface abstract Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;
.super Ljava/lang/Object;
.source "BinaryTransparencyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IBicAppInfoHelper"
.end annotation


# virtual methods
.method public abstract collectAppInfo(Lcom/android/server/pm/pkg/PackageState;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/PackageState;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract writeAppInfoToLog(Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;)V
.end method
