.class public interface abstract Lcom/android/server/webkit/SystemInterface;
.super Ljava/lang/Object;
.source "SystemInterface.java"


# virtual methods
.method public abstract enablePackageForAllUsers(Ljava/lang/String;Z)V
.end method

.method public abstract ensureZygoteStarted()V
.end method

.method public abstract getFactoryPackageVersion(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPackageInfoForProviderAllUsers(Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebViewProviderInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/webkit/UserPackage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserChosenWebViewProvider()Ljava/lang/String;
.end method

.method public abstract getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
.end method

.method public abstract installExistingPackageForAllUsers(Ljava/lang/String;)V
.end method

.method public abstract isCompatibleImplementationPackage(Landroid/content/pm/PackageInfo;)Z
.end method

.method public abstract killPackageDependents(Ljava/lang/String;)V
.end method

.method public abstract onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
.end method

.method public abstract pinWebviewIfRequired(Landroid/content/pm/ApplicationInfo;)V
.end method

.method public abstract systemIsDebuggable()Z
.end method

.method public abstract updateUserSetting(Ljava/lang/String;)V
.end method
