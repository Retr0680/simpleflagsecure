.class public Lcom/android/server/pm/parsing/PackageInfoUtils;
.super Ljava/lang/Object;
.source "PackageInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    }
.end annotation


# static fields
.field private static final SYSTEM_DATA_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-static {}, Landroid/os/Environment;->getDataDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/parsing/PackageInfoUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appInfoFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I
    .locals 3
    .param p0, "pkgWithoutStateFlags"    # I
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 985
    move v0, p0

    .line 986
    .local v0, "flags":I
    if-eqz p1, :cond_0

    .line 987
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 989
    :cond_0
    return v0
.end method

.method public static appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .locals 3
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 949
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v0

    .line 950
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isHardwareAccelerated()Z

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 951
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isBackupAllowed()Z

    move-result v1

    const v2, 0x8000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 952
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isKillAfterRestoreAllowed()Z

    move-result v1

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 953
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRestoreAnyVersion()Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 954
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isFullBackupOnly()Z

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 955
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isPersistent()Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 956
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 957
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isVmSafeMode()Z

    move-result v1

    const/16 v2, 0x4000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 958
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 959
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isTaskReparentingAllowed()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 960
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isClearUserDataAllowed()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 961
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeHeap()Z

    move-result v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 962
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isCleartextTrafficAllowed()Z

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 963
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRtlSupported()Z

    move-result v1

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 964
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isTestOnly()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 965
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 966
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtractNativeLibrariesRequested()Z

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 967
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isGame()Z

    move-result v1

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 968
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSmallScreensSupported()Z

    move-result v1

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 969
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isNormalScreensSupported()Z

    move-result v1

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 970
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeScreensSupported()Z

    move-result v1

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 971
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtraLargeScreensSupported()Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 972
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeable()Z

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 973
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAnyDensity()Z

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 974
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 975
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isFactoryTest()Z

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 977
    .local v0, "pkgWithoutStateFlags":I
    invoke-static {v0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v1

    return v1
.end method

.method public static appInfoPrivateFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I
    .locals 0
    .param p0, "pkgWithoutStateFlags"    # I
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1041
    return p0
.end method

.method public static appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .locals 3
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 997
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v0

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v0

    .line 998
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResourceOverlay()Z

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 999
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isIsolatedSplitLoading()Z

    move-result v1

    const v2, 0x8000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1000
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isHasDomainUrls()Z

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1001
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isProfileableByShell()Z

    move-result v1

    const/high16 v2, 0x800000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1002
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isBackupInForeground()Z

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1003
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    move-result v1

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1004
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1005
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1006
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isPartiallyDirectBootAware()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1007
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isClearUserDataOnFailedRestoreAllowed()Z

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1008
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAllowAudioPlaybackCapture()Z

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1009
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1010
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isNonSdkApiRequested()Z

    move-result v1

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1011
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isUserDataFragile()Z

    move-result v1

    const/high16 v2, 0x1000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1012
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSaveStateDisallowed()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1013
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeableActivityViaSdkVersion()Z

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1014
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAllowNativeHeapPointerTagging()Z

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1015
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystemExt(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1016
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1017
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isOem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1018
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isVendor(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x40000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1019
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isProduct(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1020
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isOdm(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1021
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1023
    .local v0, "pkgWithoutStateFlags":I
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object v1

    .line 1024
    .local v1, "resizeableActivity":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 1025
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1026
    or-int/lit16 v0, v0, 0x400

    goto :goto_0

    .line 1028
    :cond_0
    or-int/lit16 v0, v0, 0x800

    .line 1032
    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v2

    return v2
.end method

.method private static appInfoPrivateFlagsExt(ILcom/android/server/pm/pkg/PackageStateInternal;)I
    .locals 3
    .param p0, "pkgWithoutStateFlags"    # I
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1064
    move v0, p0

    .line 1065
    .local v0, "flags":I
    if-eqz p1, :cond_1

    .line 1066
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1068
    :cond_1
    return v0
.end method

.method public static appInfoPrivateFlagsExt(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .locals 4
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1048
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getHiddenApiWhitelistedApps()Landroid/util/ArraySet;

    move-result-object v0

    .line 1049
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1051
    .local v0, "isAllowlistedForHiddenApis":Z
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isProfileable()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    .line 1052
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->hasRequestForegroundServiceExemption()Z

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v2

    or-int/2addr v1, v2

    .line 1053
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAttributionsUserVisible()Z

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v2

    or-int/2addr v1, v2

    .line 1054
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isOnBackInvokedCallbackEnabled()Z

    move-result v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v2

    or-int/2addr v1, v2

    .line 1055
    const/16 v2, 0x10

    invoke-static {v0, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v2

    or-int/2addr v1, v2

    .line 1056
    .local v1, "pkgWithoutStateFlags":I
    invoke-static {v1, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlagsExt(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v2

    return v2
.end method

.method private static assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V
    .locals 1
    .param p0, "info"    # Landroid/content/pm/ComponentInfo;
    .param p1, "component"    # Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 898
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 899
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getDescriptionRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 900
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 901
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 902
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 903
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    .line 904
    return-void
.end method

.method private static assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ComponentInfo;
    .param p1, "component"    # Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "userId"    # I

    .line 920
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    .line 921
    nop

    .line 922
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/parsing/ParsedComponentStateUtils;->getNonLocalizedLabelAndIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)Landroid/util/Pair;

    move-result-object v0

    .line 924
    .local v0, "labelAndIcon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/CharSequence;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 925
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ComponentInfo;->icon:I

    .line 926
    return-void
.end method

.method private static assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V
    .locals 1
    .param p0, "packageItemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "component"    # Lcom/android/internal/pm/pkg/component/ParsedComponent;

    .line 908
    invoke-static {p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->getNonLocalizedLabel(Lcom/android/internal/pm/pkg/component/ParsedComponent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 909
    invoke-static {p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->getIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 910
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getBanner()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 911
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLabelRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 912
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLogo()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 913
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 914
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 915
    return-void
.end method

.method private static assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .locals 2
    .param p0, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "component"    # Lcom/android/internal/pm/pkg/component/ParsedComponent;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "userId"    # I

    .line 931
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 932
    nop

    .line 933
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/parsing/ParsedComponentStateUtils;->getNonLocalizedLabelAndIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)Landroid/util/Pair;

    move-result-object v0

    .line 935
    .local v0, "labelAndIcon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/CharSequence;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 936
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 937
    return-void
.end method

.method private static checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p0, "flags"    # J
    .param p2, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 876
    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 877
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    iget-boolean v0, p3, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    if-eqz v0, :cond_0

    .line 879
    return v1

    .line 884
    :cond_0
    invoke-static {p2, p0, p1}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v0

    nop

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    .line 885
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->matchUninstalledOrHidden(J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 884
    :goto_1
    return v1
.end method

.method public static checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z
    .locals 4
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p3, "flags"    # J

    .line 861
    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 862
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    return v1

    .line 869
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 870
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->matchUninstalledOrHidden(J)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 869
    :cond_2
    return v1
.end method

.method private static flag(ZI)I
    .locals 1
    .param p0, "hasFlag"    # Z
    .param p1, "flag"    # I

    .line 941
    if-eqz p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static generate(Lcom/android/server/pm/pkg/AndroidPackage;[IJJJLjava/util/Set;Ljava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "gids"    # [I
    .param p2, "flags"    # J
    .param p4, "firstInstallTime"    # J
    .param p6, "lastUpdateTime"    # J
    .param p10, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p11, "userId"    # I
    .param p12, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "[IJJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageUserStateInternal;",
            "I",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 113
    .local p8, "installedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p9, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p12}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateWithComponents(Lcom/android/server/pm/pkg/AndroidPackage;[IJJJLjava/util/Set;Ljava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;
    .locals 8
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "a"    # Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p5, "userId"    # I
    .param p6, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 548
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    .end local p0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p1    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local p2    # "flags":J
    .end local p4    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local p5    # "userId":I
    .end local p6    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v1, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v2, "flags":J
    .local v4, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .local v6, "userId":I
    .local v7, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;
    .locals 8
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "a"    # Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p5, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "userId"    # I
    .param p7, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 560
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 561
    :cond_0
    invoke-static {p0, p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 562
    return-object v0

    .line 564
    :cond_1
    if-nez p5, :cond_2

    .line 565
    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p6

    move-object v7, p7

    .end local p0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p2    # "flags":J
    .end local p4    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local p6    # "userId":I
    .end local p7    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v3, "flags":J
    .local v5, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .local v6, "userId":I
    .local v7, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    goto :goto_0

    .line 564
    .end local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v3    # "flags":J
    .end local v5    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v6    # "userId":I
    .end local v7    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local p2    # "flags":J
    .restart local p4    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local p6    # "userId":I
    .restart local p7    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_2
    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p6

    move-object v7, p7

    .line 568
    .end local p0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p2    # "flags":J
    .end local p4    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local p6    # "userId":I
    .end local p7    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v3    # "flags":J
    .restart local v5    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local v6    # "userId":I
    .restart local v7    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_0
    if-nez p5, :cond_3

    .line 569
    return-object v0

    .line 573
    :cond_3
    new-instance p0, Landroid/content/pm/ActivityInfo;

    invoke-direct {p0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 574
    .local p0, "ai":Landroid/content/pm/ActivityInfo;
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 575
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getProcessName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 576
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 577
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTheme()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 578
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getUiOptions()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 579
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getParentActivityName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 580
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 581
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTaskAffinity()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 582
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 583
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPrivateFlags()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 584
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLaunchMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 585
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getDocumentLaunchMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 586
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxRecents()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 587
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getConfigChanges()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 588
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getSoftInputMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 589
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPersistableMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 590
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLockTaskLaunchMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 591
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getScreenOrientation()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 592
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 593
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/pm/ActivityInfo;->setMaxAspectRatio(F)V

    .line 594
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/pm/ActivityInfo;->setMinAspectRatio(F)V

    .line 595
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isSupportsSizeChanges()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 596
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequestedVrComponent()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 597
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRotationAnimation()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 598
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getColorMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 599
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 600
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getAttributionTags()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    .line 601
    const-wide/16 p2, 0x80

    and-long/2addr p2, v3

    const-wide/16 p6, 0x0

    cmp-long p2, p2, p6

    if-eqz p2, :cond_5

    .line 602
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    .line 604
    .local p2, "metaData":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 605
    .end local p2    # "metaData":Landroid/os/Bundle;
    goto :goto_2

    .line 606
    :cond_5
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 608
    :goto_2
    iput-object p5, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 609
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequiredDisplayCategory()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 610
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequireContentUriPermissionFromCaller()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    .line 611
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getKnownActivityEmbeddingCerts()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/pm/ActivityInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    .line 612
    invoke-static {p0, p1, v7, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 613
    return-object p0
.end method

.method public static generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;
    .locals 8
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "flags"    # J
    .param p3, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p4, "userId"    # I
    .param p5, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 465
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 466
    return-object v0

    .line 469
    :cond_0
    invoke-static {p0, p5, p3, p1, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 470
    invoke-static {p5, p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 475
    :cond_1
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 477
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V

    .line 479
    invoke-static {v1, p0, p4, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/pkg/PackageUserStateInternal;)V

    .line 482
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    .line 483
    .local v2, "pkgState":Lcom/android/server/pm/pkg/PackageStateUnserialized;
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v3

    iput-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    .line 484
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v3

    .line 485
    .local v3, "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v4

    .line 486
    .local v4, "usesLibraries":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/SharedLibraryWrapper;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v5, "usesLibraryInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/SharedLibraryInfo;>;"
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 488
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    invoke-virtual {v7}, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->getInfo()Landroid/content/pm/SharedLibraryInfo;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 490
    .end local v6    # "index":I
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 491
    move-object v6, v0

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    :goto_1
    iput-object v6, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 494
    nop

    .line 495
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v0

    goto :goto_2

    :cond_4
    move-object v6, v5

    :goto_2
    iput-object v6, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 496
    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->optionalSharedLibraryInfos:Ljava/util/List;

    .line 520
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v6, -0x1

    if-ne v0, v6, :cond_5

    .line 521
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getCategoryOverride()I

    move-result v0

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 525
    :cond_5
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->isForceFull()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->setForceFull(Z)V

    .line 528
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getSeInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 529
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 530
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 532
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v6, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v6

    or-int/2addr v0, v6

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 533
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-static {v6, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v6

    or-int/2addr v0, v6

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 534
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    invoke-static {v6, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlagsExt(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v6

    or-int/2addr v0, v6

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 536
    return-object v1

    .line 471
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgState":Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .end local v3    # "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "usesLibraries":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/SharedLibraryWrapper;>;"
    .end local v5    # "usesLibraryInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/SharedLibraryInfo;>;"
    :cond_6
    :goto_3
    return-object v0
.end method

.method public static generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p0, "a"    # Landroid/content/pm/ActivityInfo;
    .param p1, "flags"    # J
    .param p3, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p4, "userId"    # I

    .line 620
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 625
    :cond_1
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 626
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 627
    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 628
    return-object v0

    .line 621
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # J
    .param p3, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p4, "userId"    # I

    .line 444
    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_1

    .line 448
    :cond_1
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 449
    .end local p0    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p4}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 450
    sget-boolean p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz p0, :cond_2

    iget p0, v0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    if-eqz p0, :cond_2

    iget p0, v0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    goto :goto_0

    .line 451
    :cond_2
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    :goto_0
    iput p0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 452
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V

    .line 453
    return-object v0

    .line 445
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;
    .locals 6
    .param p0, "i"    # Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p5, "userId"    # I
    .param p6, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 737
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 738
    :cond_0
    invoke-static {p1, p6, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 739
    return-object v0

    .line 742
    :cond_1
    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    .line 743
    .local v1, "info":Landroid/content/pm/InstrumentationInfo;
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 744
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetProcesses()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    .line 745
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->isHandleProfiling()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 746
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->isFunctionalTest()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 748
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    .line 749
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    .line 750
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitNames:[Ljava/lang/String;

    .line 751
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 752
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_3

    .line 753
    move-object v2, v0

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 754
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 755
    move-object v2, v0

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    :goto_2
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 757
    invoke-static {v1, p1, p5, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/pkg/PackageUserStateInternal;)V

    .line 759
    invoke-interface {p6}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 760
    invoke-interface {p6}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 761
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 762
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSecondaryNativeLibraryDir()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 764
    invoke-static {v1, p0, p6, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 766
    const-wide/16 v2, 0x80

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 767
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_4

    .line 769
    :cond_5
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    .line 771
    .local v2, "metaData":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, v2

    :goto_3
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 774
    .end local v2    # "metaData":Landroid/os/Bundle;
    :goto_4
    return-object v1
.end method

.method public static generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;
    .locals 6
    .param p0, "pg"    # Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    .param p1, "flags"    # J

    .line 809
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 811
    :cond_0
    new-instance v1, Landroid/content/pm/PermissionGroupInfo;

    .line 812
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getRequestDetailRes()I

    move-result v2

    .line 813
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getBackgroundRequestRes()I

    move-result v3

    .line 814
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getBackgroundRequestDetailRes()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PermissionGroupInfo;-><init>(III)V

    .line 817
    .local v1, "pgi":Landroid/content/pm/PermissionGroupInfo;
    invoke-static {v1, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 818
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getDescriptionRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 819
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPriority()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 820
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getRequestRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    .line 821
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 823
    const-wide/16 v2, 0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 824
    iput-object v0, v1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    .line 826
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    .line 828
    .local v2, "metaData":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    iput-object v0, v1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    .line 831
    .end local v2    # "metaData":Landroid/os/Bundle;
    :goto_1
    return-object v1
.end method

.method public static generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;
    .locals 6
    .param p0, "p"    # Lcom/android/internal/pm/pkg/component/ParsedPermission;
    .param p1, "flags"    # J

    .line 783
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 785
    :cond_0
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PermissionInfo;-><init>(Ljava/lang/String;)V

    .line 787
    .local v1, "pi":Landroid/content/pm/PermissionInfo;
    invoke-static {v1, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 789
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 790
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getRequestRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 791
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 792
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getDescriptionRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 793
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 794
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getKnownCerts()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 796
    const-wide/16 v2, 0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 797
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    .line 799
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    .line 801
    .local v2, "metaData":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 803
    .end local v2    # "metaData":Landroid/os/Bundle;
    :goto_1
    return-object v1
.end method

.method public static generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;
    .locals 13
    .param p1, "flags"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;J)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 837
    .local p0, "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedProcess;>;"
    if-nez p0, :cond_0

    .line 838
    const/4 v0, 0x0

    return-object v0

    .line 841
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 842
    .local v0, "numProcs":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 843
    .local v1, "retProcs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ProcessInfo;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 844
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    .line 845
    .local v4, "proc":Lcom/android/internal/pm/pkg/component/ParsedProcess;
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/pm/ProcessInfo;

    .line 846
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/util/ArraySet;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 847
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getGwpAsanMode()I

    move-result v9

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getMemtagMode()I

    move-result v10

    .line 848
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getNativeHeapZeroInitialized()I

    move-result v11

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->isUseEmbeddedDex()Z

    move-result v12

    invoke-direct/range {v6 .. v12}, Landroid/content/pm/ProcessInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;IIIZ)V

    .line 845
    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "proc":Lcom/android/internal/pm/pkg/component/ParsedProcess;
    goto :goto_0

    .line 850
    :cond_1
    return-object v1
.end method

.method public static generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;
    .locals 9
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "p"    # Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p5, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "userId"    # I
    .param p7, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 688
    move-object/from16 v5, p7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return-object v6

    .line 689
    :cond_0
    invoke-static {p0, v5, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 690
    return-object v6

    .line 692
    :cond_1
    if-eqz p5, :cond_2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 693
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfo\'s package name is different. Expected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " actual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    if-nez p5, :cond_3

    const-string v1, "(null AppInfo)"

    goto :goto_0

    .line 695
    :cond_3
    iget-object v1, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    const-string v1, "PackageParsing"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move v4, p6

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    .line 698
    :cond_4
    if-nez p5, :cond_5

    .line 699
    return-object v6

    .line 703
    :cond_5
    new-instance v0, Landroid/content/pm/ProviderInfo;

    invoke-direct {v0}, Landroid/content/pm/ProviderInfo;-><init>()V

    .line 704
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isExported()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 705
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 706
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 707
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 708
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 709
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 710
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 711
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isGrantUriPermissions()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 712
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isForceUriPermissions()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 713
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isMultiProcess()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 714
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getInitOrder()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 715
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getUriPermissionPatterns()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/os/PatternMatcher;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/PatternMatcher;

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 716
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPathPermissions()Ljava/util/List;

    move-result-object v1

    new-array v2, v2, [Landroid/content/pm/PathPermission;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/PathPermission;

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 717
    const-wide/16 v1, 0x800

    and-long/2addr v1, p2

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-nez v1, :cond_6

    .line 718
    iput-object v6, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 720
    :cond_6
    const-wide/16 v1, 0x80

    and-long/2addr v1, p2

    cmp-long v1, v1, v7

    if-eqz v1, :cond_8

    .line 721
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    .line 723
    .local v1, "metaData":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    move-object v6, v1

    :goto_1
    iput-object v6, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 725
    .end local v1    # "metaData":Landroid/os/Bundle;
    :cond_8
    iput-object p5, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 726
    invoke-static {v0, p1, v5, p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 727
    return-object v0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;
    .locals 8
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "s"    # Lcom/android/internal/pm/pkg/component/ParsedService;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p5, "userId"    # I
    .param p6, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 638
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    .end local p0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p1    # "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    .end local p2    # "flags":J
    .end local p4    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local p5    # "userId":I
    .end local p6    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v1, "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    .local v2, "flags":J
    .local v4, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .local v6, "userId":I
    .local v7, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;
    .locals 8
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "s"    # Lcom/android/internal/pm/pkg/component/ParsedService;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p5, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "userId"    # I
    .param p7, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 650
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 651
    :cond_0
    invoke-static {p0, p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 652
    return-object v0

    .line 654
    :cond_1
    if-nez p5, :cond_2

    .line 655
    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p6

    move-object v7, p7

    .end local p0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p2    # "flags":J
    .end local p4    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local p6    # "userId":I
    .end local p7    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v3, "flags":J
    .local v5, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .local v6, "userId":I
    .local v7, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    goto :goto_0

    .line 654
    .end local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v3    # "flags":J
    .end local v5    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v6    # "userId":I
    .end local v7    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local p2    # "flags":J
    .restart local p4    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local p6    # "userId":I
    .restart local p7    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_2
    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p6

    move-object v7, p7

    .line 657
    .end local p0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p2    # "flags":J
    .end local p4    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local p6    # "userId":I
    .end local p7    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v3    # "flags":J
    .restart local v5    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local v6    # "userId":I
    .restart local v7    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_0
    if-nez p5, :cond_3

    .line 658
    return-object v0

    .line 663
    :cond_3
    new-instance p0, Landroid/content/pm/ServiceInfo;

    invoke-direct {p0}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 664
    .local p0, "si":Landroid/content/pm/ServiceInfo;
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->isExported()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 665
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getFlags()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 666
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 667
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getProcessName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 668
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getForegroundServiceType()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 669
    iput-object p5, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 670
    const-wide/16 p2, 0x80

    and-long/2addr p2, v3

    const-wide/16 p6, 0x0

    cmp-long p2, p2, p6

    if-eqz p2, :cond_5

    .line 671
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    .line 673
    .local p2, "metaData":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 675
    .end local p2    # "metaData":Landroid/os/Bundle;
    :cond_5
    invoke-static {p0, p1, v7, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 676
    return-object p0
.end method

.method private static generateWithComponents(Lcom/android/server/pm/pkg/AndroidPackage;[IJJJLjava/util/Set;Ljava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;
    .locals 23
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "gids"    # [I
    .param p2, "flags"    # J
    .param p4, "firstInstallTime"    # J
    .param p6, "lastUpdateTime"    # J
    .param p10, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p11, "userId"    # I
    .param p12, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "[IJJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageUserStateInternal;",
            "I",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 125
    .local p8, "installedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p9, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v8, p9

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p10

    move/from16 v4, p11

    move-object/from16 v5, p12

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 127
    move-wide v9, v1

    .local v6, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v0, 0x0

    if-nez v6, :cond_0

    .line 128
    return-object v0

    .line 131
    :cond_0
    new-instance v1, Landroid/content/pm/PackageInfo;

    invoke-direct {v1}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 132
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 133
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 134
    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->fillVersionCodes(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PackageInfo;)V

    .line 135
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v3

    iput v3, v1, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 136
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 137
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 138
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 139
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserLabelResourceId()I

    move-result v3

    iput v3, v1, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 140
    iput-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 141
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstallLocation()I

    move-result v3

    iput v3, v1, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 142
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    .line 144
    :cond_1
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequiredForAllUsers()Z

    move-result v3

    iput-boolean v3, v1, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 146
    :cond_2
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRestrictedAccountType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 147
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequiredAccountType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 148
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 149
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    .line 150
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 151
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayPriority()I

    move-result v3

    iput v3, v1, Landroid/content/pm/PackageInfo;->overlayPriority:I

    .line 152
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isOverlayIsStatic()Z

    move-result v3

    iput-boolean v3, v1, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    .line 153
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getCompileSdkVersion()I

    move-result v3

    iput v3, v1, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    .line 154
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getCompileSdkVersionCodeName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 155
    move-wide/from16 v3, p4

    iput-wide v3, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 156
    move-wide/from16 v11, p6

    iput-wide v11, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 157
    invoke-interface/range {p10 .. p10}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 158
    invoke-interface/range {p10 .. p10}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/pkg/ArchiveState;->getArchiveTimeMillis()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Landroid/content/pm/PackageInfo;->setArchiveTimeMillis(J)V

    .line 160
    :cond_3
    const-wide/16 v13, 0x100

    and-long/2addr v13, v9

    const-wide/16 v19, 0x0

    cmp-long v5, v13, v19

    if-eqz v5, :cond_4

    .line 161
    move-object/from16 v5, p1

    iput-object v5, v1, Landroid/content/pm/PackageInfo;->gids:[I

    goto :goto_0

    .line 160
    :cond_4
    move-object/from16 v5, p1

    .line 163
    :goto_0
    const-wide/16 v13, 0x4000

    and-long/2addr v13, v9

    cmp-long v7, v13, v19

    if-eqz v7, :cond_7

    .line 164
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getConfigPreferences()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 165
    .local v7, "size":I
    if-lez v7, :cond_5

    .line 166
    new-array v13, v7, [Landroid/content/pm/ConfigurationInfo;

    iput-object v13, v1, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 167
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getConfigPreferences()Ljava/util/List;

    move-result-object v13

    iget-object v14, v1, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-interface {v13, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 169
    :cond_5
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedFeatures()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    .line 170
    if-lez v7, :cond_6

    .line 171
    new-array v13, v7, [Landroid/content/pm/FeatureInfo;

    iput-object v13, v1, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 172
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedFeatures()Ljava/util/List;

    move-result-object v13

    iget-object v14, v1, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-interface {v13, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 174
    :cond_6
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getFeatureGroups()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    .line 175
    if-lez v7, :cond_7

    .line 176
    new-array v13, v7, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v13, v1, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 177
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getFeatureGroups()Ljava/util/List;

    move-result-object v13

    iget-object v14, v1, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-interface {v13, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 180
    .end local v7    # "size":I
    :cond_7
    const-wide/16 v13, 0x1000

    and-long/2addr v13, v9

    cmp-long v7, v13, v19

    if-eqz v7, :cond_10

    .line 181
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v7

    .line 182
    .restart local v7    # "size":I
    if-lez v7, :cond_a

    .line 183
    new-array v13, v7, [Landroid/content/pm/PermissionInfo;

    iput-object v13, v1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 184
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v7, :cond_9

    .line 185
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 186
    .local v14, "permission":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    invoke-static {v14, v9, v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v15

    .line 187
    .local v15, "permissionInfo":Landroid/content/pm/PermissionInfo;
    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p8

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 188
    iget v0, v15, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v17, 0x40000000    # 2.0f

    or-int v0, v0, v17

    iput v0, v15, Landroid/content/pm/PermissionInfo;->flags:I

    .line 190
    :cond_8
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    aput-object v15, v0, v13

    .line 184
    .end local v14    # "permission":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    .end local v15    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x0

    move-object/from16 v2, p0

    goto :goto_1

    :cond_9
    move-object/from16 v2, p8

    goto :goto_2

    .line 182
    .end local v13    # "i":I
    :cond_a
    move-object/from16 v2, p8

    .line 193
    :goto_2
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesPermissions()Ljava/util/List;

    move-result-object v0

    .line 194
    .local v0, "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 195
    if-lez v7, :cond_f

    .line 196
    new-array v13, v7, [Ljava/lang/String;

    iput-object v13, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 197
    new-array v13, v7, [I

    iput-object v13, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 198
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    if-ge v13, v7, :cond_e

    .line 199
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 200
    .local v14, "usesPermission":Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;
    iget-object v15, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v13

    .line 202
    iget-object v15, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v17, v15, v13

    or-int/lit8 v17, v17, 0x1

    aput v17, v15, v13

    .line 204
    if-eqz v8, :cond_b

    .line 205
    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 206
    iget-object v15, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v17, v15, v13

    or-int/lit8 v17, v17, 0x2

    aput v17, v15, v13

    .line 209
    :cond_b
    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getUsesPermissionFlags()I

    move-result v15

    const/high16 v17, 0x10000

    and-int v15, v15, v17

    if-eqz v15, :cond_c

    .line 211
    iget-object v15, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v18, v15, v13

    or-int v17, v18, v17

    aput v17, v15, v13

    .line 214
    :cond_c
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v15

    move-object/from16 v17, v0

    .end local v0    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .local v17, "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v0, v0, v13

    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 215
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v15, v0, v13

    or-int/lit8 v15, v15, 0x4

    aput v15, v0, v13

    .line 198
    .end local v14    # "usesPermission":Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;
    :cond_d
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v17

    goto :goto_3

    .end local v17    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .restart local v0    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    :cond_e
    move-object/from16 v17, v0

    .end local v0    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .restart local v17    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    goto :goto_4

    .line 195
    .end local v13    # "i":I
    .end local v17    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .restart local v0    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    :cond_f
    move-object/from16 v17, v0

    .end local v0    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .restart local v17    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    goto :goto_4

    .line 180
    .end local v7    # "size":I
    .end local v17    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    :cond_10
    move-object/from16 v2, p8

    .line 221
    :goto_4
    const-wide v13, 0x80000000L

    and-long/2addr v13, v9

    cmp-long v0, v13, v19

    if-eqz v0, :cond_15

    .line 222
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 223
    .local v0, "size":I
    if-lez v0, :cond_13

    .line 224
    new-array v7, v0, [Landroid/content/pm/Attribution;

    iput-object v7, v1, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    .line 225
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v0, :cond_12

    .line 226
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    .line 227
    .local v13, "parsedAttribution":Lcom/android/internal/pm/pkg/component/ParsedAttribution;
    if-eqz v13, :cond_11

    .line 228
    iget-object v14, v1, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    new-instance v15, Landroid/content/pm/Attribution;

    move/from16 v17, v0

    .end local v0    # "size":I
    .local v17, "size":I
    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getLabel()I

    move-result v2

    invoke-direct {v15, v0, v2}, Landroid/content/pm/Attribution;-><init>(Ljava/lang/String;I)V

    aput-object v15, v14, v7

    goto :goto_6

    .line 227
    .end local v17    # "size":I
    .restart local v0    # "size":I
    :cond_11
    move/from16 v17, v0

    .line 225
    .end local v0    # "size":I
    .end local v13    # "parsedAttribution":Lcom/android/internal/pm/pkg/component/ParsedAttribution;
    .restart local v17    # "size":I
    :goto_6
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p8

    move/from16 v0, v17

    goto :goto_5

    .end local v17    # "size":I
    .restart local v0    # "size":I
    :cond_12
    move/from16 v17, v0

    .end local v0    # "size":I
    .restart local v17    # "size":I
    goto :goto_7

    .line 223
    .end local v7    # "i":I
    .end local v17    # "size":I
    .restart local v0    # "size":I
    :cond_13
    move/from16 v17, v0

    .line 233
    .end local v0    # "size":I
    .restart local v17    # "size":I
    :goto_7
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAttributionsUserVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 234
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    goto :goto_8

    .line 237
    :cond_14
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 240
    .end local v17    # "size":I
    :goto_8
    goto :goto_9

    .line 241
    :cond_15
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 245
    :goto_9
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 246
    .local v0, "signingDetails":Landroid/content/pm/SigningDetails;
    invoke-static {v0, v9, v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->getDeprecatedSignatures(Landroid/content/pm/SigningDetails;J)[Landroid/content/pm/Signature;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 249
    const-wide/32 v13, 0x8000000

    and-long/2addr v13, v9

    cmp-long v2, v13, v19

    if-eqz v2, :cond_17

    .line 250
    sget-object v2, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v0, v2, :cond_16

    .line 252
    new-instance v2, Landroid/content/pm/SigningInfo;

    invoke-direct {v2, v0}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v2, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_a

    .line 254
    :cond_16
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 258
    :cond_17
    :goto_a
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 259
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isCoreApp()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 260
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 262
    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v2

    if-nez v2, :cond_18

    .line 264
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 265
    const/4 v2, 0x0

    iput v2, v1, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 268
    :cond_18
    const-wide/16 v13, 0x1

    and-long/2addr v13, v9

    cmp-long v2, v13, v19

    if-eqz v2, :cond_1d

    .line 269
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 270
    .local v2, "N":I
    if-lez v2, :cond_1c

    .line 272
    const-wide v13, 0x200000000L

    or-long v17, v9, v13

    .line 274
    .local v17, "aflags":J
    const/4 v7, 0x0

    .line 275
    .local v7, "num":I
    new-array v13, v2, [Landroid/content/pm/ActivityInfo;

    .line 276
    .local v13, "res":[Landroid/content/pm/ActivityInfo;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_b
    if-ge v14, v2, :cond_1b

    .line 277
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v21, v15

    check-cast v21, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 278
    .local v21, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v12

    move-object v11, v13

    .end local v13    # "res":[Landroid/content/pm/ActivityInfo;
    .local v11, "res":[Landroid/content/pm/ActivityInfo;
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v13

    .line 279
    move v15, v14

    .end local v14    # "i":I
    .local v15, "i":I
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isEnabled()Z

    move-result v14

    move/from16 v16, v15

    .end local v15    # "i":I
    .local v16, "i":I
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isDirectBootAware()Z

    move-result v15

    move/from16 v22, v16

    .end local v16    # "i":I
    .local v22, "i":I
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v16

    .line 278
    move-object v8, v11

    move-object/from16 v11, p10

    .end local v11    # "res":[Landroid/content/pm/ActivityInfo;
    .local v8, "res":[Landroid/content/pm/ActivityInfo;
    invoke-static/range {v11 .. v18}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 280
    sget-object v11, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 281
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v12

    .line 280
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 282
    move-object v13, v0

    move-object v12, v1

    move v14, v2

    move v15, v7

    move-wide/from16 v2, v17

    move-object/from16 v17, v6

    goto :goto_c

    .line 284
    :cond_19
    add-int/lit8 v11, v7, 0x1

    move-object/from16 v4, p10

    move-object v13, v0

    move-object v12, v1

    move v14, v2

    move-object v5, v6

    move v15, v7

    move-wide/from16 v2, v17

    move-object/from16 v1, v21

    move-object/from16 v0, p0

    move/from16 v6, p11

    move-object/from16 v7, p12

    .end local v0    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "num":I
    .end local v17    # "aflags":J
    .end local v21    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v1, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v2, "aflags":J
    .local v5, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v11, "num":I
    .local v12, "info":Landroid/content/pm/PackageInfo;
    .local v13, "signingDetails":Landroid/content/pm/SigningDetails;
    .local v14, "N":I
    .local v15, "num":I
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v16

    move-object/from16 v17, v5

    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v17, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    aput-object v16, v8, v15

    move v7, v11

    .end local v15    # "num":I
    goto :goto_d

    .line 278
    .end local v11    # "num":I
    .end local v12    # "info":Landroid/content/pm/PackageInfo;
    .end local v13    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v14    # "N":I
    .restart local v0    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v1, "info":Landroid/content/pm/PackageInfo;
    .local v2, "N":I
    .restart local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "num":I
    .local v17, "aflags":J
    .restart local v21    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_1a
    move-object v13, v0

    move-object v12, v1

    move v14, v2

    move v15, v7

    move-wide/from16 v2, v17

    move-object/from16 v1, v21

    move-object/from16 v17, v6

    .line 276
    .end local v21    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :goto_c
    move v7, v15

    .end local v0    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v2, "aflags":J
    .restart local v12    # "info":Landroid/content/pm/PackageInfo;
    .restart local v13    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v14    # "N":I
    .local v17, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_d
    add-int/lit8 v0, v22, 0x1

    move-object/from16 v5, p1

    move-object v1, v12

    move-object/from16 v6, v17

    move-wide/from16 v11, p6

    move-wide/from16 v17, v2

    move v2, v14

    move-wide/from16 v3, p4

    move v14, v0

    move-object v0, v13

    move-object v13, v8

    move-object/from16 v8, p9

    .end local v22    # "i":I
    .local v0, "i":I
    goto/16 :goto_b

    .end local v8    # "res":[Landroid/content/pm/ActivityInfo;
    .end local v12    # "info":Landroid/content/pm/PackageInfo;
    .local v0, "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    .local v2, "N":I
    .restart local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v13, "res":[Landroid/content/pm/ActivityInfo;
    .local v14, "i":I
    .local v17, "aflags":J
    :cond_1b
    move-object v12, v1

    move v15, v7

    move-object v8, v13

    move/from16 v22, v14

    move-object v13, v0

    move v14, v2

    move-wide/from16 v2, v17

    move-object/from16 v17, v6

    .line 288
    .end local v0    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "num":I
    .local v2, "aflags":J
    .restart local v8    # "res":[Landroid/content/pm/ActivityInfo;
    .restart local v12    # "info":Landroid/content/pm/PackageInfo;
    .local v13, "signingDetails":Landroid/content/pm/SigningDetails;
    .local v14, "N":I
    .restart local v15    # "num":I
    .local v17, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {v8, v15}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v12, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    goto :goto_e

    .line 270
    .end local v8    # "res":[Landroid/content/pm/ActivityInfo;
    .end local v12    # "info":Landroid/content/pm/PackageInfo;
    .end local v13    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v14    # "N":I
    .end local v15    # "num":I
    .end local v17    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    .local v2, "N":I
    .restart local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1c
    move-object v13, v0

    move-object v12, v1

    move v14, v2

    move-object/from16 v17, v6

    .end local v0    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "N":I
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "info":Landroid/content/pm/PackageInfo;
    .restart local v13    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v14    # "N":I
    .restart local v17    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_e

    .line 268
    .end local v12    # "info":Landroid/content/pm/PackageInfo;
    .end local v13    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v14    # "N":I
    .end local v17    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    .restart local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1d
    move-object v13, v0

    move-object v12, v1

    move-object/from16 v17, v6

    .line 291
    .end local v0    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "info":Landroid/content/pm/PackageInfo;
    .restart local v13    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v17    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_e
    const-wide/16 v0, 0x2

    and-long/2addr v0, v9

    cmp-long v0, v0, v19

    if-eqz v0, :cond_20

    .line 292
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 293
    .local v8, "size":I
    if-lez v8, :cond_20

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "num":I
    new-array v11, v8, [Landroid/content/pm/ActivityInfo;

    .line 296
    .local v11, "res":[Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    move v14, v0

    move v15, v1

    .end local v0    # "num":I
    .local v14, "num":I
    .local v15, "i":I
    :goto_f
    if-ge v15, v8, :cond_1f

    .line 297
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 298
    .local v16, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v2

    .line 299
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isEnabled()Z

    move-result v3

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isDirectBootAware()Z

    move-result v4

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v5

    .line 298
    move-object/from16 v0, p10

    move-wide v6, v9

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 300
    add-int/lit8 v9, v14, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p10

    move/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v1, v16

    move-object/from16 v5, v17

    .end local v14    # "num":I
    .end local v16    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v17    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v1, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .restart local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v9, "num":I
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v17    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    aput-object v10, v11, v14

    move v14, v9

    goto :goto_10

    .line 298
    .end local v1    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v9    # "num":I
    .restart local v14    # "num":I
    .restart local v16    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_1e
    move-object/from16 v1, v16

    .line 296
    .end local v16    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :goto_10
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v9, p2

    goto :goto_f

    :cond_1f
    nop

    .line 304
    .end local v15    # "i":I
    invoke-static {v11, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v12, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 307
    .end local v8    # "size":I
    .end local v11    # "res":[Landroid/content/pm/ActivityInfo;
    .end local v14    # "num":I
    :cond_20
    const-wide/16 v0, 0x4

    and-long v0, p2, v0

    cmp-long v0, v0, v19

    if-eqz v0, :cond_23

    .line 308
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 309
    .restart local v8    # "size":I
    if-lez v8, :cond_23

    .line 310
    const/4 v0, 0x0

    .line 311
    .restart local v0    # "num":I
    new-array v9, v8, [Landroid/content/pm/ServiceInfo;

    .line 312
    .local v9, "res":[Landroid/content/pm/ServiceInfo;
    const/4 v1, 0x0

    move v10, v0

    move v11, v1

    .end local v0    # "num":I
    .local v10, "num":I
    .local v11, "i":I
    :goto_11
    if-ge v11, v8, :cond_22

    .line 313
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 314
    .local v14, "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v2

    .line 315
    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedService;->isEnabled()Z

    move-result v3

    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedService;->isDirectBootAware()Z

    move-result v4

    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v5

    .line 314
    move-wide/from16 v6, p2

    move-object/from16 v0, p10

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 316
    add-int/lit8 v15, v10, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p10

    move/from16 v6, p11

    move-object/from16 v7, p12

    move-object v1, v14

    move-object/from16 v5, v17

    .end local v10    # "num":I
    .end local v14    # "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    .end local v17    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v1, "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    .restart local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v15, "num":I
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object v14

    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v17    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    aput-object v14, v9, v10

    move v10, v15

    goto :goto_12

    .line 314
    .end local v1    # "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    .end local v15    # "num":I
    .restart local v10    # "num":I
    .restart local v14    # "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    :cond_21
    move-object v1, v14

    .line 312
    .end local v14    # "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    :goto_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_22
    nop

    .line 320
    .end local v11    # "i":I
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ServiceInfo;

    iput-object v0, v12, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 323
    .end local v8    # "size":I
    .end local v9    # "res":[Landroid/content/pm/ServiceInfo;
    .end local v10    # "num":I
    :cond_23
    const-wide/16 v0, 0x8

    and-long v0, p2, v0

    cmp-long v0, v0, v19

    if-eqz v0, :cond_26

    .line 324
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 325
    .restart local v8    # "size":I
    if-lez v8, :cond_26

    .line 326
    const/4 v0, 0x0

    .line 327
    .restart local v0    # "num":I
    new-array v9, v8, [Landroid/content/pm/ProviderInfo;

    .line 328
    .local v9, "res":[Landroid/content/pm/ProviderInfo;
    const/4 v1, 0x0

    move v10, v0

    move v11, v1

    .end local v0    # "num":I
    .restart local v10    # "num":I
    .restart local v11    # "i":I
    :goto_13
    if-ge v11, v8, :cond_25

    .line 329
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    .line 330
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 331
    .local v14, "pr":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v2

    .line 332
    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isEnabled()Z

    move-result v3

    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isDirectBootAware()Z

    move-result v4

    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v5

    .line 331
    move-wide/from16 v6, p2

    move-object/from16 v0, p10

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 333
    add-int/lit8 v15, v10, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p10

    move/from16 v6, p11

    move-object/from16 v7, p12

    move-object v1, v14

    move-object/from16 v5, v17

    .end local v10    # "num":I
    .end local v14    # "pr":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .end local v17    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v1, "pr":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .restart local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v15    # "num":I
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v14

    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v17    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    aput-object v14, v9, v10

    move v10, v15

    goto :goto_14

    .line 331
    .end local v1    # "pr":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .end local v15    # "num":I
    .restart local v10    # "num":I
    .restart local v14    # "pr":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    :cond_24
    move-object v1, v14

    .line 328
    .end local v14    # "pr":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    :goto_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_25
    nop

    .line 337
    .end local v11    # "i":I
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ProviderInfo;

    iput-object v0, v12, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 340
    .end local v8    # "size":I
    .end local v9    # "res":[Landroid/content/pm/ProviderInfo;
    .end local v10    # "num":I
    :cond_26
    const-wide/16 v0, 0x10

    and-long v0, p2, v0

    cmp-long v0, v0, v19

    if-eqz v0, :cond_27

    .line 341
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 342
    .local v7, "N":I
    if-lez v7, :cond_27

    .line 343
    new-array v0, v7, [Landroid/content/pm/InstrumentationInfo;

    iput-object v0, v12, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 344
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_15
    if-ge v8, v7, :cond_27

    .line 345
    iget-object v9, v12, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 346
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 345
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p10

    move/from16 v5, p11

    move-object/from16 v6, p12

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    aput-object v0, v9, v8

    .line 344
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 352
    .end local v7    # "N":I
    .end local v8    # "i":I
    :cond_27
    return-object v12
.end method

.method public static getDataDir(Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/io/File;
    .locals 2
    .param p0, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p1, "userId"    # I

    .line 1176
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 1180
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1181
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1182
    nop

    .line 1184
    const/4 v0, 0x0

    return-object v0

    .line 1187
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isDefaultToDeviceProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1189
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 1190
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1189
    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 1192
    :cond_2
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 1193
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1192
    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDeprecatedSignatures(Landroid/content/pm/SigningDetails;J)[Landroid/content/pm/Signature;
    .locals 4
    .param p0, "signingDetails"    # Landroid/content/pm/SigningDetails;
    .param p1, "flags"    # J

    .line 359
    const-wide/16 v0, 0x40

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 360
    return-object v1

    .line 362
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 365
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/pm/Signature;

    .line 366
    .local v0, "signatures":[Landroid/content/pm/Signature;
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v1

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    .line 367
    return-object v0

    .line 368
    .end local v0    # "signatures":[Landroid/content/pm/Signature;
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasSignatures()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    array-length v0, v0

    .line 371
    .local v0, "numberOfSigs":I
    new-array v1, v0, [Landroid/content/pm/Signature;

    .line 372
    .local v1, "signatures":[Landroid/content/pm/Signature;
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v3

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    return-object v1

    .line 376
    .end local v0    # "numberOfSigs":I
    .end local v1    # "signatures":[Landroid/content/pm/Signature;
    :cond_2
    return-object v1
.end method

.method private static initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/pkg/PackageUserStateInternal;)V
    .locals 8
    .param p0, "output"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "input"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 1074
    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 1075
    .local v0, "pkg":Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1076
    .local v1, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1078
    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1079
    sget-object v2, Lcom/android/server/pm/parsing/PackageInfoUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1080
    return-void

    .line 1083
    :cond_0
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1084
    nop

    .line 1086
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1087
    return-void

    .line 1091
    :cond_1
    if-nez p2, :cond_2

    .line 1092
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1093
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1095
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_0

    .line 1098
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1099
    .local v2, "userIdString":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 1100
    .local v3, "credentialLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1101
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v6, v3, -0x1

    .line 1102
    invoke-virtual {v4, v5, v6, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1103
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1105
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 1106
    .local v4, "deviceLength":I
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1107
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v4, -0x2

    add-int/lit8 v7, v4, -0x1

    .line 1108
    invoke-virtual {v5, v6, v7, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1109
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 1113
    .end local v2    # "userIdString":Ljava/lang/String;
    .end local v3    # "credentialLength":I
    .end local v4    # "deviceLength":I
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1115
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_1

    .line 1117
    :cond_3
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1119
    :goto_1
    return-void
.end method

.method private static initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/pkg/PackageUserStateInternal;)V
    .locals 8
    .param p0, "output"    # Landroid/content/pm/InstrumentationInfo;
    .param p1, "input"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 1125
    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 1126
    .local v0, "pkg":Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1127
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1128
    sget-object v2, Lcom/android/server/pm/parsing/PackageInfoUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 1129
    return-void

    .line 1132
    :cond_0
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1133
    nop

    .line 1135
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 1136
    return-void

    .line 1140
    :cond_1
    if-nez p2, :cond_2

    .line 1141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1142
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1144
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_0

    .line 1147
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1148
    .local v2, "userIdString":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 1149
    .local v3, "credentialLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v6, v3, -0x1

    .line 1151
    invoke-virtual {v4, v5, v6, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1152
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1154
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 1155
    .local v4, "deviceLength":I
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1156
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v4, -0x2

    add-int/lit8 v7, v4, -0x1

    .line 1157
    invoke-virtual {v5, v6, v7, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1158
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 1162
    .end local v2    # "userIdString":Ljava/lang/String;
    .end local v3    # "credentialLength":I
    .end local v4    # "deviceLength":I
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1164
    iget-object v2, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    goto :goto_1

    .line 1166
    :cond_3
    iget-object v2, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 1168
    :goto_1
    return-void
.end method

.method private static matchUninstalledOrHidden(J)Z
    .locals 4
    .param p0, "flags"    # J

    .line 889
    const-wide v0, 0x120402000L

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V
    .locals 8
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # J
    .param p3, "state"    # Lcom/android/server/pm/pkg/PackageUserState;

    .line 381
    const-wide/16 v0, 0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 382
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 384
    :cond_0
    const-wide/16 v4, 0x400

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 385
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 386
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 390
    :cond_1
    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_2

    .line 391
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 394
    :cond_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v4

    const/high16 v5, 0x200000

    invoke-static {v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v4

    .line 395
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v5

    const/high16 v6, 0x800000

    invoke-static {v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v5

    or-int/2addr v4, v5

    .line 396
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v5

    or-int/2addr v4, v5

    or-int/2addr v0, v4

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 397
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    const/16 v5, 0x80

    invoke-static {v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v4

    .line 398
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v5

    const/high16 v6, 0x10000

    invoke-static {v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v5

    or-int/2addr v4, v5

    .line 405
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_3

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isPrivacyHidden()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_1

    :goto_0
    move v5, v6

    :goto_1
    invoke-static {v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v5

    or-int/2addr v4, v5

    or-int/2addr v0, v4

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 407
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 408
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v4

    const/16 v5, 0x40

    invoke-static {v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v4

    or-int/2addr v0, v4

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 409
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 410
    iput-boolean v6, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_3

    .line 411
    :cond_5
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_7

    .line 413
    const-wide/32 v4, 0x8000

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v6, v7

    :goto_2
    iput-boolean v6, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_3

    .line 414
    :cond_7
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    .line 415
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    .line 417
    :cond_8
    iput-boolean v7, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 419
    :cond_9
    :goto_3
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 420
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    .line 421
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 423
    :cond_a
    invoke-static {p3}, Lcom/android/server/pm/pkg/SELinuxUtil;->getSeinfoUser(Lcom/android/server/pm/pkg/PackageUserState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 424
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v0

    .line 425
    .local v0, "overlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    if-eqz v0, :cond_b

    .line 426
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 427
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 429
    :cond_b
    invoke-static {p3}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    .line 430
    iget-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    if-eqz v2, :cond_c

    .line 431
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/ArchiveState;->getActivityInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 433
    :cond_c
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result v2

    if-nez v2, :cond_d

    .line 434
    nop

    .line 436
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 438
    :cond_d
    return-void
.end method
