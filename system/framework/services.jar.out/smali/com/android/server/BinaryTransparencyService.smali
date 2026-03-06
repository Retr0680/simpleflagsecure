.class public Lcom/android/server/BinaryTransparencyService;
.super Lcom/android/server/SystemService;
.source "BinaryTransparencyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BinaryTransparencyService$BiometricLogger;,
        Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;,
        Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;,
        Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;,
        Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;,
        Lcom/android/server/BinaryTransparencyService$Digest;
    }
.end annotation


# static fields
.field static final APEX_PRELOAD_LOCATION_ERROR:Ljava/lang/String; = "could-not-be-determined"

.field static final BINARY_HASH_ERROR:Ljava/lang/String; = "SHA256HashError"

.field private static final DEBUG:Z = false

.field static final DIGEST_ALGORITHM_CHUNKED_SHA256:I = 0x1

.field static final DIGEST_ALGORITHM_CHUNKED_SHA512:I = 0x2

.field static final DIGEST_ALGORITHM_SHA256:I = 0x4

.field static final DIGEST_ALGORITHM_UNKNOWN:I = 0x0

.field static final DIGEST_ALGORITHM_VERITY_CHUNKED_SHA256:I = 0x3

.field static final KEY_ENABLE_BIOMETRIC_PROPERTY_VERIFICATION:Ljava/lang/String; = "enable_biometric_property_verification"

.field public static final LOG_MBA_INFO:J = 0xea4f847L

.field static final MBA_STATUS_DOWNGRADED_PRELOADED:I = 0x5

.field static final MBA_STATUS_ERROR:I = 0x0

.field static final MBA_STATUS_NEW_INSTALL:I = 0x3

.field static final MBA_STATUS_PRELOADED:I = 0x1

.field static final MBA_STATUS_UNINSTALLED:I = 0x6

.field static final MBA_STATUS_UPDATED_NEW_INSTALL:I = 0x4

.field static final MBA_STATUS_UPDATED_PRELOAD:I = 0x2

.field static final RECORD_MEASUREMENTS_COOLDOWN_MS:J = 0x5265c00L

.field static final SYSPROP_NAME_VBETA_DIGEST:Ljava/lang/String; = "ro.boot.vbmeta.digest"

.field private static final TAG:Ljava/lang/String; = "TransparencyService"

.field static final VBMETA_DIGEST_UNAVAILABLE:Ljava/lang/String; = "vbmeta-digest-unavailable"

.field static final VBMETA_DIGEST_UNINITIALIZED:Ljava/lang/String; = "vbmeta-digest-uninitialized"

.field private static final digestAllPackagesLatency:Lcom/android/modules/expresslog/Histogram;


# instance fields
.field private mBiometricLogger:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

.field private final mContext:Landroid/content/Context;

.field private mMeasurementsLastRecordedMs:J

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

.field private mVbmetaDigest:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$e2eFFQ4jadgx-pDFIBv7RiSb2IE(Lcom/android/server/BinaryTransparencyService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/BinaryTransparencyService;->lambda$collectBootIntegrityInfo$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$flMmp8UseBbIcDrF5oc9FDN2ITM(Landroid/content/pm/PackageInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/BinaryTransparencyService;->lambda$getCurrentInstalledApexs$1(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/BinaryTransparencyService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMeasurementsLastRecordedMs(Lcom/android/server/BinaryTransparencyService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/BinaryTransparencyService;->mMeasurementsLastRecordedMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/BinaryTransparencyService;)Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceImpl(Lcom/android/server/BinaryTransparencyService;)Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVbmetaDigest(Lcom/android/server/BinaryTransparencyService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmMeasurementsLastRecordedMs(Lcom/android/server/BinaryTransparencyService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/BinaryTransparencyService;->mMeasurementsLastRecordedMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mapexPackageNameToModuleName(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BinaryTransparencyService;->apexPackageNameToModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCurrentInstalledApexs(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/BinaryTransparencyService;->getCurrentInstalledApexs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetInstallSourceInfo(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BinaryTransparencyService;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNewlyInstalledMbas(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/BinaryTransparencyService;->getNewlyInstalledMbas()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetOriginalApexPreinstalledLocation(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BinaryTransparencyService;->getOriginalApexPreinstalledLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misPackageAnApex(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BinaryTransparencyService;->isPackageAnApex(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misPackagePreloaded(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BinaryTransparencyService;->isPackagePreloaded(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlogBiometricProperties(Lcom/android/server/BinaryTransparencyService;Landroid/hardware/biometrics/SensorProperties;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BinaryTransparencyService;->logBiometricProperties(Landroid/hardware/biometrics/SensorProperties;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoFaceSensorType(Lcom/android/server/BinaryTransparencyService;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BinaryTransparencyService;->toFaceSensorType(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtoFingerprintSensorType(Lcom/android/server/BinaryTransparencyService;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BinaryTransparencyService;->toFingerprintSensorType(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtranslateContentDigestAlgorithmIdToString(Lcom/android/server/BinaryTransparencyService;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BinaryTransparencyService;->translateContentDigestAlgorithmIdToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetdigestAllPackagesLatency()Lcom/android/modules/expresslog/Histogram;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/BinaryTransparencyService;->digestAllPackagesLatency:Lcom/android/modules/expresslog/Histogram;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 154
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    const/4 v2, 0x0

    const/high16 v3, 0x43fa0000    # 500.0f

    const/16 v4, 0x32

    invoke-direct {v1, v4, v2, v3}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string v2, "binary_transparency.value_digest_all_packages_latency_uniform"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/BinaryTransparencyService;->digestAllPackagesLatency:Lcom/android/modules/expresslog/Histogram;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1171
    invoke-static {}, Lcom/android/server/BinaryTransparencyService$BiometricLogger;->getInstance()Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/BinaryTransparencyService;-><init>(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService$BiometricLogger;)V

    .line 1172
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService$BiometricLogger;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "biometricLogger"    # Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    .line 1176
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1177
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 1178
    new-instance v0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    invoke-direct {v0, p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    iput-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 1179
    const-string/jumbo v0, "vbmeta-digest-uninitialized"

    iput-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    .line 1180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/BinaryTransparencyService;->mMeasurementsLastRecordedMs:J

    .line 1181
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1182
    iput-object p2, p0, Lcom/android/server/BinaryTransparencyService;->mBiometricLogger:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    .line 1183
    return-void
.end method

.method private apexPackageNameToModuleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1828
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private collectBootIntegrityInfo()V
    .locals 2

    .line 1575
    const-string/jumbo v0, "ro.boot.vbmeta.digest"

    const-string/jumbo v1, "vbmeta-digest-unavailable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    .line 1576
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VBMeta Digest: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransparencyService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const/16 v0, 0x1a4

    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 1579
    invoke-static {}, Lcom/android/server/IoThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1590
    return-void
.end method

.method private getCurrentInstalledApexs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1775
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1776
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "TransparencyService"

    if-nez v1, :cond_0

    .line 1777
    const-string v3, "Error obtaining an instance of PackageManager."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    return-object v0

    .line 1780
    :cond_0
    nop

    .line 1781
    const-wide/32 v3, 0x48000000

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    .line 1780
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    move-result-object v3

    .line 1783
    .local v3, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-nez v3, :cond_1

    .line 1784
    const-string v4, "Error obtaining installed packages (including APEX)"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    return-object v0

    .line 1788
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 1789
    return-object v0
.end method

.method private getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1794
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1795
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1796
    const-string v2, "TransparencyService"

    const-string v3, "Error obtaining an instance of PackageManager."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    return-object v1

    .line 1800
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1801
    :catch_0
    move-exception v2

    .line 1802
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1803
    return-object v1
.end method

.method private getNewlyInstalledMbas()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1847
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    nop

    .line 1848
    const-string v1, "background_install_control"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1847
    invoke-static {v1}, Landroid/content/pm/IBackgroundInstallControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IBackgroundInstallControlService;

    move-result-object v1

    .line 1849
    .local v1, "iBics":Landroid/content/pm/IBackgroundInstallControlService;
    const-string v2, "TransparencyService"

    if-nez v1, :cond_0

    .line 1850
    const-string v3, "Failed to obtain an IBinder instance of IBackgroundInstallControlService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    return-object v0

    .line 1856
    :cond_0
    const-wide/32 v3, 0x8020000

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v1, v3, v4, v5}, Landroid/content/pm/IBackgroundInstallControlService;->getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1862
    .local v2, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    nop

    .line 1863
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 1859
    .end local v2    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v3

    .line 1860
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to get a list of MBAs."

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1861
    return-object v0
.end method

.method private getOriginalApexPreinstalledLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1810
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/BinaryTransparencyService;->apexPackageNameToModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1811
    .local v0, "moduleName":Ljava/lang/String;
    const-string v1, "apexservice"

    .line 1812
    invoke-static {v1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    .line 1811
    invoke-static {v1}, Landroid/apex/IApexService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/apex/IApexService;

    move-result-object v1

    .line 1813
    .local v1, "apexService":Landroid/apex/IApexService;
    invoke-interface {v1}, Landroid/apex/IApexService;->getAllPackages()[Landroid/apex/ApexInfo;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 1814
    .local v5, "info":Landroid/apex/ApexInfo;
    iget-object v6, v5, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1815
    iget-object v2, v5, Landroid/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1818
    .end local v0    # "moduleName":Ljava/lang/String;
    .end local v1    # "apexService":Landroid/apex/IApexService;
    .end local v5    # "info":Landroid/apex/ApexInfo;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1814
    .restart local v0    # "moduleName":Ljava/lang/String;
    .restart local v1    # "apexService":Landroid/apex/IApexService;
    .restart local v5    # "info":Landroid/apex/ApexInfo;
    :cond_0
    nop

    .line 1813
    .end local v5    # "info":Landroid/apex/ApexInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1820
    .end local v0    # "moduleName":Ljava/lang/String;
    .end local v1    # "apexService":Landroid/apex/IApexService;
    goto :goto_2

    .line 1818
    :goto_1
    nop

    .line 1819
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransparencyService"

    const-string v2, "Unable to get package list from apexservice"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1821
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    const-string v0, "could-not-be-determined"

    return-object v0
.end method

.method private isPackageAnApex(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1697
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1699
    .local v0, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 1700
    const-wide/32 v1, 0x40000000

    :try_start_0
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    .line 1699
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1701
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-boolean v2, v1, Landroid/content/pm/PackageInfo;->isApex:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1702
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 1703
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method private isPackagePreloaded(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1686
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1688
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-wide/32 v1, 0x200000

    :try_start_0
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1692
    nop

    .line 1693
    const/4 v1, 0x1

    return v1

    .line 1690
    :catch_0
    move-exception v1

    .line 1691
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method private synthetic lambda$collectBootIntegrityInfo$0()V
    .locals 4

    .line 1580
    nop

    .line 1581
    invoke-static {}, Landroid/util/PackageUtils;->createLargeFileBuffer()[B

    move-result-object v0

    .line 1580
    const-string v1, "/sys/fs/selinux/policy"

    invoke-static {v1, v0}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFileAsBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 1582
    .local v0, "sepolicyHash":[B
    const/4 v1, 0x0

    .line 1583
    .local v1, "sepolicyHashEncoded":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1584
    const/4 v2, 0x0

    invoke-static {v0, v2}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v1

    .line 1585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sepolicy hash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TransparencyService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_0
    const/16 v2, 0x307

    iget-object v3, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 1589
    return-void
.end method

.method private static synthetic lambda$getCurrentInstalledApexs$1(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "p"    # Landroid/content/pm/PackageInfo;

    .line 1788
    iget-boolean v0, p0, Landroid/content/pm/PackageInfo;->isApex:Z

    return v0
.end method

.method private logBiometricProperties(Landroid/hardware/biometrics/SensorProperties;II)V
    .locals 12
    .param p1, "prop"    # Landroid/hardware/biometrics/SensorProperties;
    .param p2, "modality"    # I
    .param p3, "sensorType"    # I

    .line 1482
    invoke-virtual {p1}, Landroid/hardware/biometrics/SensorProperties;->getSensorId()I

    move-result v1

    .line 1483
    .local v1, "sensorId":I
    invoke-virtual {p1}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/BinaryTransparencyService;->toSensorStrength(I)I

    move-result v4

    .line 1488
    .local v4, "sensorStrength":I
    invoke-virtual {p1}, Landroid/hardware/biometrics/SensorProperties;->getComponentInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;

    .line 1489
    .local v11, "componentInfo":Landroid/hardware/biometrics/SensorProperties$ComponentInfo;
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mBiometricLogger:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    .line 1494
    invoke-virtual {v11}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1495
    invoke-virtual {v11}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getHardwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1496
    invoke-virtual {v11}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1497
    invoke-virtual {v11}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1498
    invoke-virtual {v11}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1489
    move v2, p2

    move v3, p3

    .end local p2    # "modality":I
    .end local p3    # "sensorType":I
    .local v2, "modality":I
    .local v3, "sensorType":I
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/BinaryTransparencyService$BiometricLogger;->logStats(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    .end local v11    # "componentInfo":Landroid/hardware/biometrics/SensorProperties$ComponentInfo;
    goto :goto_0

    .line 1500
    .end local v2    # "modality":I
    .end local v3    # "sensorType":I
    .restart local p2    # "modality":I
    .restart local p3    # "sensorType":I
    :cond_0
    return-void
.end method

.method private registerAllPackageUpdateObservers()V
    .locals 0

    .line 1749
    invoke-direct {p0}, Lcom/android/server/BinaryTransparencyService;->registerApkAndNonStagedApexUpdateListener()V

    .line 1750
    invoke-direct {p0}, Lcom/android/server/BinaryTransparencyService;->registerStagedApexUpdateObserver()V

    .line 1751
    nop

    .line 1755
    return-void
.end method

.method private registerApkAndNonStagedApexUpdateListener()V
    .locals 4

    .line 1610
    const-string v0, "TransparencyService"

    const-string v1, "Registering APK & Non-Staged APEX updates..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1612
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1613
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;-><init>(Lcom/android/server/BinaryTransparencyService;Lcom/android/server/BinaryTransparencyService-IA;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1614
    return-void
.end method

.method private registerBicCallback()V
    .locals 4

    .line 1649
    nop

    .line 1653
    nop

    .line 1655
    const-string v0, "background_install_control"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1654
    invoke-static {v0}, Landroid/content/pm/IBackgroundInstallControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IBackgroundInstallControlService;

    move-result-object v0

    .line 1657
    .local v0, "iBics":Landroid/content/pm/IBackgroundInstallControlService;
    const-string v1, "TransparencyService"

    if-nez v0, :cond_0

    .line 1658
    const-string v2, "Failed to register BackgroundInstallControl callback, either background install control service does not exist or disabled on this build."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    return-void

    .line 1664
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;

    new-instance v3, Lcom/android/server/BinaryTransparencyService$4;

    invoke-direct {v3, p0}, Lcom/android/server/BinaryTransparencyService$4;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-direct {v2, v3}, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;-><init>(Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;)V

    invoke-interface {v0, v2}, Landroid/content/pm/IBackgroundInstallControlService;->registerBackgroundInstallCallback(Landroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1682
    goto :goto_0

    .line 1680
    :catch_0
    move-exception v2

    .line 1681
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to register BackgroundInstallControl callback."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private registerStagedApexUpdateObserver()V
    .locals 4

    .line 1624
    const-string v0, "Registering APEX updates..."

    const-string v1, "TransparencyService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    nop

    .line 1626
    const-string/jumbo v0, "package_native"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1625
    invoke-static {v0}, Landroid/content/pm/IPackageManagerNative$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManagerNative;

    move-result-object v0

    .line 1627
    .local v0, "iPackageManagerNative":Landroid/content/pm/IPackageManagerNative;
    if-nez v0, :cond_0

    .line 1628
    const-string v2, "IPackageManagerNative is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    return-void

    .line 1633
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/server/BinaryTransparencyService$3;

    invoke-direct {v2, p0}, Lcom/android/server/BinaryTransparencyService$3;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManagerNative;->registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1645
    goto :goto_0

    .line 1643
    :catch_0
    move-exception v2

    .line 1644
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to register a StagedApexObserver."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private toFaceSensorType(I)I
    .locals 1
    .param p1, "sensorType"    # I

    .line 1438
    packed-switch p1, :pswitch_data_0

    .line 1446
    const/4 v0, 0x0

    return v0

    .line 1443
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 1440
    :pswitch_1
    const/4 v0, 0x6

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toFingerprintSensorType(I)I
    .locals 1
    .param p1, "sensorType"    # I

    .line 1409
    packed-switch p1, :pswitch_data_0

    .line 1426
    const/4 v0, 0x0

    return v0

    .line 1423
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1420
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1417
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1414
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1411
    :pswitch_4
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toSensorStrength(I)I
    .locals 1
    .param p1, "sensorStrength"    # I

    .line 1458
    packed-switch p1, :pswitch_data_0

    .line 1469
    const/4 v0, 0x0

    return v0

    .line 1466
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1463
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1460
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private translateContentDigestAlgorithmIdToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "algorithmId"    # I

    .line 1758
    packed-switch p1, :pswitch_data_0

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_ALGO_ID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1766
    :pswitch_0
    const-string v0, "SHA256"

    return-object v0

    .line 1764
    :pswitch_1
    const-string v0, "VERITY_CHUNKED_SHA256"

    return-object v0

    .line 1762
    :pswitch_2
    const-string v0, "CHUNKED_SHA512"

    return-object v0

    .line 1760
    :pswitch_3
    const-string v0, "CHUNKED_SHA256"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method collectBiometricProperties()V
    .locals 5

    .line 1506
    const-string v0, "enable_biometric_property_verification"

    const/4 v1, 0x1

    const-string v2, "biometrics"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1512
    return-void

    .line 1515
    :cond_0
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1516
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 1517
    .local v1, "fpManager":Landroid/hardware/fingerprint/FingerprintManager;
    const/4 v2, 0x0

    .line 1518
    .local v2, "faceManager":Landroid/hardware/face/FaceManager;
    if-eqz v0, :cond_1

    const-string v3, "android.hardware.fingerprint"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1519
    iget-object v3, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 1521
    :cond_1
    if-eqz v0, :cond_2

    const-string v3, "android.hardware.biometrics.face"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1522
    iget-object v3, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/face/FaceManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/hardware/face/FaceManager;

    .line 1525
    :cond_2
    if-eqz v1, :cond_3

    .line 1526
    const/4 v3, 0x1

    .line 1528
    .local v3, "fpModality":I
    new-instance v4, Lcom/android/server/BinaryTransparencyService$1;

    invoke-direct {v4, p0}, Lcom/android/server/BinaryTransparencyService$1;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-virtual {v1, v4}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    .line 1549
    .end local v3    # "fpModality":I
    :cond_3
    if-eqz v2, :cond_4

    .line 1550
    const/4 v3, 0x4

    .line 1552
    .local v3, "faceModality":I
    new-instance v4, Lcom/android/server/BinaryTransparencyService$2;

    invoke-direct {v4, p0}, Lcom/android/server/BinaryTransparencyService$2;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-virtual {v2, v4}, Landroid/hardware/face/FaceManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    .line 1572
    .end local v3    # "faceModality":I
    :cond_4
    return-void
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 1297
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 1298
    const-string v0, "Boot completed. Getting boot integrity data."

    const-string v1, "TransparencyService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-direct {p0}, Lcom/android/server/BinaryTransparencyService;->collectBootIntegrityInfo()V

    .line 1307
    const-string v0, "Boot completed. Collecting biometric system properties."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->collectBiometricProperties()V

    .line 1313
    const-string v0, "Scheduling measurements to be taken."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->scheduleBinaryMeasurements(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService;)V

    .line 1317
    invoke-direct {p0}, Lcom/android/server/BinaryTransparencyService;->registerAllPackageUpdateObservers()V

    .line 1319
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1280
    const-string v0, "TransparencyService"

    :try_start_0
    const-string/jumbo v1, "transparency"

    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService;->mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1281
    const-string v1, "Started BinaryTransparencyService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    goto :goto_0

    .line 1282
    :catchall_0
    move-exception v1

    .line 1283
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "Failed to start BinaryTransparencyService."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1285
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
