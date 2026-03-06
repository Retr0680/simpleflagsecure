.class final Lcom/android/server/pm/DumpHelper;
.super Ljava/lang/Object;
.source "DumpHelper.java"


# instance fields
.field private final mAvailableFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

.field private final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field private final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field private final mKnownPackages:Lcom/android/server/pm/KnownPackages;

.field private final mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field private final mProtectedBroadcasts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequiredVerifierPackages:[Ljava/lang/String;

.field private final mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

.field private final mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;


# direct methods
.method public static synthetic $r8$lambda$m4jNxRY74ZLb_Qhn1z5qrJf1Fyw(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseArray;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/DumpHelper;->lambda$doDump$0(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseArray;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/StorageEventHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/PackageInstallerService;[Ljava/lang/String;Lcom/android/server/pm/KnownPackages;Lcom/android/server/pm/ChangedPackagesTracker;Landroid/util/ArrayMap;Landroid/util/ArraySet;[Landroid/os/incremental/PerUidReadTimeouts;Lcom/android/server/pm/SnapshotStatistics;)V
    .locals 0
    .param p1, "permissionManager"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "storageEventHelper"    # Lcom/android/server/pm/StorageEventHelper;
    .param p3, "domainVerificationManager"    # Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .param p4, "installerService"    # Lcom/android/server/pm/PackageInstallerService;
    .param p5, "requiredVerifierPackages"    # [Ljava/lang/String;
    .param p6, "knownPackages"    # Lcom/android/server/pm/KnownPackages;
    .param p7, "changedPackagesTracker"    # Lcom/android/server/pm/ChangedPackagesTracker;
    .param p10, "perUidReadTimeouts"    # [Landroid/os/incremental/PerUidReadTimeouts;
    .param p11, "snapshotStatistics"    # Lcom/android/server/pm/SnapshotStatistics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;",
            "Lcom/android/server/pm/StorageEventHelper;",
            "Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;",
            "Lcom/android/server/pm/PackageInstallerService;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/KnownPackages;",
            "Lcom/android/server/pm/ChangedPackagesTracker;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;[",
            "Landroid/os/incremental/PerUidReadTimeouts;",
            "Lcom/android/server/pm/SnapshotStatistics;",
            ")V"
        }
    .end annotation

    .line 77
    .local p8, "availableFeatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    .local p9, "protectedBroadcasts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 79
    iput-object p2, p0, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 80
    iput-object p3, p0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 81
    iput-object p4, p0, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 82
    iput-object p5, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 83
    iput-object p6, p0, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    .line 84
    iput-object p7, p0, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 85
    iput-object p8, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 86
    iput-object p9, p0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 87
    iput-object p10, p0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 88
    iput-object p11, p0, Lcom/android/server/pm/DumpHelper;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    .line 89
    return-void
.end method

.method private dumpAvailableFeaturesProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 703
    iget-object v0, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 704
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 705
    iget-object v2, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/FeatureInfo;

    const-wide v3, 0x20b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/FeatureInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 707
    .end local v1    # "i":I
    return-void
.end method

.method private dumpProto(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;)V
    .locals 14
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 661
    move-object v0, p1

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 663
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v3, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const-wide/32 v7, 0x10000000

    const-wide v11, 0x10900000001L

    if-ge v6, v4, :cond_0

    aget-object v13, v3, v6

    .line 664
    .local v13, "requiredVerifierPackage":Ljava/lang/String;
    nop

    .line 665
    const-wide v9, 0x10b00000001L

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 666
    .local v9, "requiredVerifierPackageToken":J
    invoke-virtual {v1, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 668
    nop

    .line 670
    invoke-interface {p1, v13, v7, v8, v5}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v7

    .line 668
    const-wide v11, 0x10500000002L

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 674
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 663
    .end local v9    # "requiredVerifierPackageToken":J
    .end local v13    # "requiredVerifierPackage":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 677
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object v3

    .line 678
    .local v3, "proxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    invoke-interface {v3}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 679
    .local v4, "verifierComponent":Landroid/content/ComponentName;
    if-eqz v4, :cond_1

    .line 680
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 681
    .local v6, "verifierPackageName":Ljava/lang/String;
    nop

    .line 682
    const-wide v9, 0x10b00000002L

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 683
    .local v9, "verifierPackageToken":J
    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 684
    nop

    .line 686
    invoke-interface {p1, v6, v7, v8, v5}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    .line 684
    const-wide v11, 0x10500000002L

    invoke-virtual {v1, v11, v12, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 690
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 693
    .end local v6    # "verifierPackageName":Ljava/lang/String;
    .end local v9    # "verifierPackageToken":J
    :cond_1
    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 694
    invoke-direct {p0, v1}, Lcom/android/server/pm/DumpHelper;->dumpAvailableFeaturesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 695
    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 696
    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 697
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V

    .line 698
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 699
    return-void
.end method

.method private static synthetic lambda$doDump$0(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseArray;)V
    .locals 9
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sequenceNumber"    # Ljava/lang/Integer;
    .param p2, "values"    # Landroid/util/SparseArray;

    .line 482
    const-string v0, "  Sequence number="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 484
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 485
    .local v0, "numChangedPackages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 486
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 487
    .local v2, "changes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v3, "  User "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 489
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 491
    .local v3, "numChanges":I
    const-string v4, "    "

    if-nez v3, :cond_0

    .line 492
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 493
    const-string v4, "No packages changed"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 495
    :cond_0
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 496
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 497
    .local v6, "pkgName":Ljava/lang/String;
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 498
    .local v7, "userSequenceNumber":I
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 499
    const-string/jumbo v8, "seq="

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 501
    const-string v8, ", package="

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "userSequenceNumber":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 485
    .end local v2    # "changes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v3    # "numChanges":I
    .end local v5    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 506
    .end local v1    # "i":I
    return-void
.end method

.method private printHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 617
    const-string v0, "Package manager dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    const-string v0, "  [-h] [-f] [--checkin] [--all-components] [cmd] ..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    const-string v0, "    --checkin: dump for a checkin"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    const-string v0, "    -f: print details of intent filters"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    const-string v0, "    -h: print this help"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    const-string v0, "    --proto: dump data to proto"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    const-string v0, "    --all-components: include all component names in package dump"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    const-string v0, "    --include-apex: includes the apex packages in package dump"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    const-string v0, "  cmd may be one of:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    const-string v0, "    apex: list active APEXes and APEX session state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    const-string v0, "    l[ibraries]: list known shared libraries"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    const-string v0, "    f[eatures]: list device features"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    const-string v0, "    k[eysets]: print known keysets"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    const-string v0, "    r[esolvers] [activity|service|receiver|content]: dump intent resolvers"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    const-string v0, "    perm[issions]: dump permissions"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    const-string v0, "    permission [name ...]: dump declaration and use of given permission"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    const-string v0, "    pref[erred]: print preferred package settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    const-string v0, "    preferred-xml [--full]: print preferred package settings as xml"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    const-string v0, "    prov[iders]: dump content providers"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    const-string v0, "    p[ackages]: dump installed packages"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    const-string v0, "    q[ueries]: dump app queryability calculations"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    const-string v0, "    s[hared-users] [noperm]: dump shared user IDs"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    const-string v0, "    m[essages]: print collected runtime messages"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    const-string v0, "    v[erifiers]: print package verifier info"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    const-string v0, "    d[omain-preferred-apps]: print domains preferred apps"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    const-string v0, "    i[ntent-filter-verifiers]|ifv: print intent filter verifier info"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    const-string v0, "    t[imeouts]: print read timeouts for known digesters"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    const-string v0, "    version: print database version info"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    const-string v0, "    write: write current settings now"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    const-string v0, "    installs: details about install sessions"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    const-string v0, "    check-permission <permission> <package> [<user>]: does pkg hold perm?"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    const-string v0, "    dexopt: dump dexopt state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    const-string v0, "    compiler-stats: dump compiler statistics"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    const-string v0, "    service-permissions: dump permissions required by services"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    const-string v0, "    snapshot [--full|--brief]: dump snapshot statistics"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    const-string v0, "    protected-broadcasts: print list of protected broadcast actions"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    const-string v0, "    known-packages: dump known packages"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    const-string v0, "    changes: dump the packages that have been changed"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    const-string v0, "    frozen: dump the frozen packages"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    const-string v0, "    volumes: dump the loaded volumes"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    const-string v0, "    <package.name>: info about given package"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    return-void
.end method


# virtual methods
.method public doDump(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 23
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 93
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v3, p3

    move-object/from16 v9, p4

    new-instance v6, Lcom/android/server/pm/DumpState;

    invoke-direct {v6}, Lcom/android/server/pm/DumpState;-><init>()V

    .line 94
    .local v6, "dumpState":Lcom/android/server/pm/DumpState;
    const/4 v4, 0x0

    .line 96
    .local v4, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 97
    .local v0, "opti":I
    :goto_0
    array-length v5, v9

    const/16 v7, 0x8

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v0, v5, :cond_8

    .line 98
    aget-object v5, v9, v0

    .line 99
    .local v5, "opt":Ljava/lang/String;
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_8

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2d

    if-eq v13, v14, :cond_0

    .line 100
    goto/16 :goto_2

    .line 102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 104
    const-string v11, "-a"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    const-string v11, "-h"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 107
    invoke-direct {v1, v3}, Lcom/android/server/pm/DumpHelper;->printHelp(Ljava/io/PrintWriter;)V

    .line 108
    return-void

    .line 109
    :cond_2
    const-string v11, "--checkin"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 110
    invoke-virtual {v6, v12}, Lcom/android/server/pm/DumpState;->setCheckIn(Z)V

    goto :goto_1

    .line 111
    :cond_3
    const-string v11, "--all-components"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 112
    invoke-virtual {v6, v10}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_1

    .line 113
    :cond_4
    const-string v10, "-f"

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 114
    invoke-virtual {v6, v12}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_1

    .line 115
    :cond_5
    const-string v10, "--include-apex"

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 116
    invoke-virtual {v6, v7}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_1

    .line 117
    :cond_6
    const-string v7, "--proto"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 118
    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/DumpHelper;->dumpProto(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;)V

    .line 119
    return-void

    .line 121
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown argument: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; use -h for help"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    .end local v5    # "opt":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 126
    :cond_8
    :goto_2
    array-length v5, v9

    const/high16 v15, 0x80000

    const v10, 0x8000

    const/16 v7, 0x2000

    if-ge v0, v5, :cond_47

    .line 127
    aget-object v5, v9, v0

    .line 128
    .local v5, "cmd":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 130
    const-string v11, "android"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "."

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_9
    goto/16 :goto_1a

    .line 135
    :cond_a
    const-string v11, "check-permission"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 136
    array-length v7, v9

    if-lt v0, v7, :cond_b

    .line 137
    const-string v7, "Error: check-permission missing permission argument"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    return-void

    .line 140
    :cond_b
    aget-object v7, v9, v0

    .line 141
    .local v7, "perm":Ljava/lang/String;
    add-int/2addr v0, v12

    .line 142
    array-length v10, v9

    if-lt v0, v10, :cond_c

    .line 143
    const-string v10, "Error: check-permission missing package argument"

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    return-void

    .line 147
    :cond_c
    aget-object v10, v9, v0

    .line 148
    .local v10, "pkg":Ljava/lang/String;
    add-int/lit8 v11, v0, 0x1

    .line 149
    .end local v0    # "opti":I
    .local v11, "opti":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 150
    .local v12, "user":I
    array-length v0, v9

    if-ge v11, v0, :cond_d

    .line 152
    :try_start_0
    aget-object v0, v9, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v0

    .line 157
    goto :goto_3

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error: check-permission user argument is not a number: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v9, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    return-void

    .line 161
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    :goto_3
    const-wide/16 v13, -0x1

    invoke-interface {v2, v10, v13, v14}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 164
    .end local v10    # "pkg":Ljava/lang/String;
    .local v0, "pkg":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v13, "default:0"

    invoke-interface {v10, v0, v7, v13, v12}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 166
    return-void

    .line 167
    .end local v7    # "perm":Ljava/lang/String;
    .end local v11    # "opti":I
    .end local v12    # "user":I
    .local v0, "opti":I
    :cond_e
    const-string/jumbo v11, "l"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    const-string/jumbo v11, "libraries"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    :cond_f
    goto/16 :goto_19

    .line 169
    :cond_10
    const-string v11, "f"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    const-string v11, "features"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    :cond_11
    goto/16 :goto_18

    .line 171
    :cond_12
    const-string/jumbo v11, "r"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    const-string/jumbo v13, "s"

    if-nez v17, :cond_3b

    const-string/jumbo v14, "resolvers"

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    const/16 v14, 0x200

    goto/16 :goto_11

    .line 195
    :cond_13
    const-string/jumbo v11, "perm"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3a

    const-string/jumbo v11, "permissions"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    const/16 v14, 0x200

    goto/16 :goto_10

    .line 197
    :cond_14
    const-string/jumbo v11, "permission"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 198
    array-length v11, v9

    if-lt v0, v11, :cond_15

    .line 199
    const-string v7, "Error: permission requires permission name"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    return-void

    .line 202
    :cond_15
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v11

    .line 203
    :goto_4
    array-length v11, v9

    if-ge v0, v11, :cond_16

    .line 204
    aget-object v11, v9, v0

    invoke-virtual {v4, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 207
    :cond_16
    const/16 v11, 0x1c0

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    move-object v5, v4

    goto/16 :goto_1c

    .line 209
    :cond_17
    const-string/jumbo v11, "pref"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_39

    const-string/jumbo v11, "preferred"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    const/16 v14, 0x200

    goto/16 :goto_f

    .line 211
    :cond_18
    const-string/jumbo v11, "preferred-xml"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v14, "--full"

    if-eqz v11, :cond_19

    .line 212
    invoke-virtual {v6, v7}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 213
    array-length v11, v9

    if-ge v0, v11, :cond_46

    aget-object v11, v9, v0

    invoke-virtual {v14, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_46

    .line 214
    invoke-virtual {v6, v12}, Lcom/android/server/pm/DumpState;->setFullPreferred(Z)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    move-object v5, v4

    goto/16 :goto_1c

    .line 217
    :cond_19
    const-string v11, "d"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_38

    const-string v11, "domain-preferred-apps"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    const/16 v14, 0x200

    goto/16 :goto_e

    .line 219
    :cond_1a
    const-string/jumbo v11, "p"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_37

    const-string/jumbo v11, "packages"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    const/16 v14, 0x200

    goto/16 :goto_d

    .line 221
    :cond_1b
    const-string/jumbo v11, "q"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_36

    const-string/jumbo v11, "queries"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/16 v14, 0x200

    goto/16 :goto_c

    .line 223
    :cond_1c
    invoke-virtual {v13, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_35

    const-string/jumbo v11, "shared-users"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    const/16 v14, 0x200

    goto/16 :goto_b

    .line 228
    :cond_1d
    const-string/jumbo v11, "prov"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_34

    const-string/jumbo v11, "providers"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    const/16 v14, 0x200

    goto/16 :goto_a

    .line 230
    :cond_1e
    const-string/jumbo v11, "m"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1f

    const-string/jumbo v11, "messages"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    :cond_1f
    goto/16 :goto_9

    .line 232
    :cond_20
    const-string/jumbo v11, "v"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_21

    const-string/jumbo v11, "verifiers"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22

    :cond_21
    goto/16 :goto_8

    .line 234
    :cond_22
    const-string v11, "dv"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_23

    const-string v11, "domain-verifier"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    :cond_23
    goto/16 :goto_7

    .line 236
    :cond_24
    const-string/jumbo v11, "version"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 237
    invoke-virtual {v6, v10}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 238
    :cond_25
    const-string/jumbo v11, "k"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_26

    const-string/jumbo v11, "keysets"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27

    :cond_26
    goto/16 :goto_6

    .line 240
    :cond_27
    const-string/jumbo v11, "installs"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28

    .line 241
    const/high16 v11, 0x10000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 242
    :cond_28
    const-string v11, "frozen"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_29

    .line 243
    invoke-virtual {v6, v15}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 244
    :cond_29
    const-string/jumbo v11, "volumes"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 245
    const/high16 v11, 0x800000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 246
    :cond_2a
    const-string v11, "dexopt"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 247
    const/high16 v11, 0x100000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 248
    :cond_2b
    const-string v11, "compiler-stats"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 249
    const/high16 v11, 0x200000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 250
    :cond_2c
    const-string v11, "changes"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2d

    .line 251
    const/high16 v11, 0x400000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 252
    :cond_2d
    const-string/jumbo v11, "service-permissions"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2e

    .line 253
    const/high16 v11, 0x1000000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 254
    :cond_2e
    const-string/jumbo v11, "known-packages"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2f

    .line 255
    const/high16 v11, 0x8000000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 256
    :cond_2f
    const-string/jumbo v11, "t"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_30

    const-string/jumbo v11, "timeouts"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_31

    :cond_30
    goto :goto_5

    .line 258
    :cond_31
    const-string/jumbo v11, "snapshot"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_33

    .line 259
    const/high16 v11, 0x20000000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 260
    array-length v11, v9

    if-ge v0, v11, :cond_46

    .line 261
    aget-object v11, v9, v0

    invoke-virtual {v14, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_32

    .line 262
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setBrief(Z)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    move-object v5, v4

    goto/16 :goto_1c

    .line 264
    :cond_32
    const-string v11, "--brief"

    aget-object v13, v9, v0

    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_46

    .line 265
    invoke-virtual {v6, v12}, Lcom/android/server/pm/DumpState;->setBrief(Z)V

    .line 266
    add-int/lit8 v0, v0, 0x1

    move-object v5, v4

    goto/16 :goto_1c

    .line 269
    :cond_33
    const-string/jumbo v11, "protected-broadcasts"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_46

    .line 270
    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 257
    :goto_5
    const/high16 v11, 0x10000000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 239
    :goto_6
    const/16 v11, 0x4000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 235
    :goto_7
    const/high16 v11, 0x20000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 233
    :goto_8
    const/16 v11, 0x800

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 231
    :goto_9
    const/16 v14, 0x200

    invoke-virtual {v6, v14}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 228
    :cond_34
    const/16 v14, 0x200

    .line 229
    :goto_a
    const/16 v11, 0x400

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 223
    :cond_35
    const/16 v14, 0x200

    .line 224
    :goto_b
    const/16 v11, 0x100

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 225
    array-length v11, v9

    if-ge v0, v11, :cond_46

    const-string/jumbo v11, "noperm"

    aget-object v13, v9, v0

    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_46

    .line 226
    const/4 v11, 0x4

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto/16 :goto_1b

    .line 221
    :cond_36
    const/16 v14, 0x200

    .line 222
    :goto_c
    const/high16 v11, 0x4000000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 219
    :cond_37
    const/16 v14, 0x200

    .line 220
    :goto_d
    const/16 v11, 0x80

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 217
    :cond_38
    const/16 v14, 0x200

    .line 218
    :goto_e
    const/high16 v11, 0x40000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 209
    :cond_39
    const/16 v14, 0x200

    .line 210
    :goto_f
    const/16 v11, 0x1000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 195
    :cond_3a
    const/16 v14, 0x200

    .line 196
    :goto_10
    const/16 v11, 0x40

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 171
    :cond_3b
    const/16 v14, 0x200

    .line 172
    :goto_11
    array-length v14, v9

    if-lt v0, v14, :cond_3c

    .line 173
    const/16 v11, 0x3c

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 178
    :cond_3c
    :goto_12
    array-length v14, v9

    if-ge v0, v14, :cond_45

    .line 179
    aget-object v14, v9, v0

    .line 180
    .local v14, "name":Ljava/lang/String;
    const-string v15, "a"

    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3d

    const-string v15, "activity"

    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3e

    :cond_3d
    goto :goto_16

    .line 182
    :cond_3e
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3f

    const-string/jumbo v15, "service"

    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_40

    :cond_3f
    goto :goto_15

    .line 184
    :cond_40
    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_41

    const-string/jumbo v15, "receiver"

    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_42

    :cond_41
    goto :goto_14

    .line 186
    :cond_42
    const-string v15, "c"

    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_43

    const-string v15, "content"

    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_44

    :cond_43
    goto :goto_13

    .line 189
    :cond_44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: unknown resolver table type: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    return-void

    .line 187
    :goto_13
    const/16 v15, 0x20

    invoke-virtual {v6, v15}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_17

    .line 185
    :goto_14
    const/16 v15, 0x10

    invoke-virtual {v6, v15}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_17

    .line 183
    :goto_15
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_17

    .line 181
    :goto_16
    const/4 v15, 0x4

    invoke-virtual {v6, v15}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 192
    :goto_17
    nop

    .end local v14    # "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 193
    const/high16 v15, 0x80000

    goto :goto_12

    .line 178
    :cond_45
    move-object v5, v4

    goto :goto_1c

    .line 170
    :goto_18
    const/4 v11, 0x2

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_1b

    .line 168
    :goto_19
    invoke-virtual {v6, v12}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_1b

    .line 131
    :goto_1a
    invoke-virtual {v6, v5}, Lcom/android/server/pm/DumpState;->setTargetPackageName(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v6, v12}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    .line 274
    .end local v5    # "cmd":Ljava/lang/String;
    :cond_46
    :goto_1b
    move-object v5, v4

    goto :goto_1c

    .line 126
    :cond_47
    move-object v5, v4

    .line 274
    .end local v4    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v5, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1c
    invoke-virtual {v6}, Lcom/android/server/pm/DumpState;->getTargetPackageName()Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    move-result v11

    .line 278
    .local v11, "checkin":Z
    if-eqz v4, :cond_48

    .line 279
    invoke-interface {v2, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    if-nez v13, :cond_48

    .line 280
    invoke-interface {v2, v4}, Lcom/android/server/pm/Computer;->isApexPackage(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_48

    .line 281
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to find package: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    return-void

    .line 285
    :cond_48
    if-eqz v11, :cond_49

    .line 286
    const-string/jumbo v13, "vers,1"

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    :cond_49
    nop

    nop

    if-nez v11, :cond_4a

    .line 291
    invoke-virtual {v6, v10}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v13

    if-eqz v13, :cond_4a

    if-nez v4, :cond_4a

    .line 293
    invoke-interface {v2, v10, v8, v3, v6}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 296
    :cond_4a
    const-string v10, "  "

    if-nez v11, :cond_50

    .line 297
    const/high16 v13, 0x8000000

    invoke-virtual {v6, v13}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v13

    if-eqz v13, :cond_4f

    if-nez v4, :cond_4f

    .line 299
    invoke-virtual {v6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v13

    if-eqz v13, :cond_4b

    .line 300
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 302
    :cond_4b
    new-instance v13, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v14, 0x78

    invoke-direct {v13, v3, v10, v14}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 303
    .local v13, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v14, "Known Packages:"

    invoke-virtual {v13, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 305
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1d
    const/16 v15, 0x13

    if-gt v14, v15, :cond_4e

    .line 306
    invoke-static {v14}, Lcom/android/server/pm/KnownPackages;->knownPackageToString(I)Ljava/lang/String;

    move-result-object v15

    .line 307
    .local v15, "knownPackage":Ljava/lang/String;
    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 308
    const-string v7, ":"

    invoke-virtual {v13, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 309
    iget-object v7, v1, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    const/4 v12, 0x0

    invoke-virtual {v7, v2, v14, v12}, Lcom/android/server/pm/KnownPackages;->getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object v7

    .line 311
    .local v7, "pkgNames":[Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 312
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4c

    .line 313
    const-string/jumbo v12, "none"

    invoke-virtual {v13, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move/from16 v18, v0

    goto :goto_1f

    .line 315
    :cond_4c
    array-length v12, v7

    move/from16 v18, v0

    const/4 v0, 0x0

    .end local v0    # "opti":I
    .local v18, "opti":I
    :goto_1e
    nop

    if-ge v0, v12, :cond_4d

    move/from16 v19, v0

    aget-object v0, v7, v19

    .line 316
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 315
    .end local v0    # "name":Ljava/lang/String;
    add-int/lit8 v0, v19, 0x1

    goto :goto_1e

    .line 319
    :cond_4d
    :goto_1f
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 305
    .end local v7    # "pkgNames":[Ljava/lang/String;
    .end local v15    # "knownPackage":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v18

    const/16 v7, 0x2000

    const/4 v12, 0x1

    goto :goto_1d

    .end local v18    # "opti":I
    .local v0, "opti":I
    :cond_4e
    move/from16 v18, v0

    .line 321
    .end local v0    # "opti":I
    .end local v14    # "i":I
    .restart local v18    # "opti":I
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_20

    .line 297
    .end local v13    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v18    # "opti":I
    .restart local v0    # "opti":I
    :cond_4f
    move/from16 v18, v0

    .end local v0    # "opti":I
    .restart local v18    # "opti":I
    goto :goto_20

    .line 296
    .end local v18    # "opti":I
    .restart local v0    # "opti":I
    :cond_50
    move/from16 v18, v0

    .line 324
    .end local v0    # "opti":I
    .restart local v18    # "opti":I
    :goto_20
    const/16 v0, 0x800

    invoke-virtual {v6, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v0

    const-string v7, ","

    const-string v12, ")"

    if-eqz v0, :cond_55

    if-nez v4, :cond_55

    .line 325
    if-nez v11, :cond_52

    iget-object v0, v1, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_52

    .line 326
    invoke-virtual {v6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 327
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 329
    :cond_51
    const-string v0, "Verifiers:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    :cond_52
    iget-object v0, v1, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v15, v0

    const/4 v13, 0x0

    :goto_21
    if-ge v13, v15, :cond_54

    aget-object v14, v0, v13

    .line 332
    .local v14, "requiredVerifierPackage":Ljava/lang/String;
    if-nez v11, :cond_53

    .line 333
    move-object/from16 v20, v0

    const-string v0, "  Required: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    const-string v0, " (uid="

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    move-object/from16 v22, v4

    move-object/from16 v21, v5

    const/4 v0, 0x0

    const-wide/32 v4, 0x10000000

    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v21, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v22, "packageName":Ljava/lang/String;
    invoke-interface {v2, v14, v4, v5, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 338
    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_22

    .line 340
    .end local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v22    # "packageName":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_53
    move-object/from16 v20, v0

    move-object/from16 v22, v4

    move-object/from16 v21, v5

    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "packageName":Ljava/lang/String;
    const-string/jumbo v0, "vrfy,"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x0

    const-wide/32 v4, 0x10000000

    invoke-interface {v2, v14, v4, v5, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 331
    .end local v14    # "requiredVerifierPackage":Ljava/lang/String;
    :goto_22
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, p4

    move-object/from16 v0, v20

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    goto :goto_21

    .end local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v22    # "packageName":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_54
    move-object/from16 v22, v4

    move-object/from16 v21, v5

    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "packageName":Ljava/lang/String;
    goto :goto_23

    .line 324
    .end local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v22    # "packageName":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_55
    move-object/from16 v22, v4

    move-object/from16 v21, v5

    .line 349
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "packageName":Ljava/lang/String;
    :goto_23
    const/high16 v0, 0x20000

    invoke-virtual {v6, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    if-nez v22, :cond_5a

    .line 351
    iget-object v0, v1, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object v0

    .line 352
    .local v0, "proxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 353
    .local v4, "verifierComponent":Landroid/content/ComponentName;
    if-eqz v4, :cond_59

    .line 354
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, "verifierPackageName":Ljava/lang/String;
    if-nez v11, :cond_57

    .line 356
    invoke-virtual {v6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v9

    if-eqz v9, :cond_56

    .line 357
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 359
    :cond_56
    const-string v9, "Domain Verifier:"

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    const-string v9, "  Using: "

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    const-string v9, " (uid="

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 363
    const/4 v9, 0x0

    const-wide/32 v13, 0x10000000

    invoke-interface {v2, v5, v13, v14, v9}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v13

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 365
    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_24

    .line 366
    :cond_57
    if-eqz v5, :cond_58

    .line 367
    const-string v9, "dv,"

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    const/4 v9, 0x0

    const-wide/32 v13, 0x10000000

    invoke-interface {v2, v5, v13, v14, v9}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v13

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_24

    .line 366
    :cond_58
    const/4 v9, 0x0

    .line 373
    .end local v5    # "verifierPackageName":Ljava/lang/String;
    :goto_24
    goto :goto_25

    .line 374
    :cond_59
    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 375
    const-string v5, "No Domain Verifier available!"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_25

    .line 349
    .end local v0    # "proxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .end local v4    # "verifierComponent":Landroid/content/ComponentName;
    :cond_5a
    const/4 v9, 0x0

    .line 379
    :goto_25
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_5b

    if-nez v22, :cond_5b

    .line 381
    invoke-interface {v2, v0, v8, v3, v6}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 384
    :cond_5b
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v0

    if-eqz v0, :cond_60

    if-nez v22, :cond_60

    .line 386
    invoke-virtual {v6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 387
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 389
    :cond_5c
    if-nez v11, :cond_5d

    .line 390
    const-string v0, "Features:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    :cond_5d
    iget-object v0, v1, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/FeatureInfo;

    .line 394
    .local v4, "feat":Landroid/content/pm/FeatureInfo;
    if-nez v11, :cond_5f

    .line 395
    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    iget-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    iget v5, v4, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v5, :cond_5e

    .line 398
    const-string v5, " version="

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    iget v5, v4, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 401
    :cond_5e
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    goto :goto_27

    .line 403
    :cond_5f
    const-string v5, "feat,"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    iget v5, v4, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 408
    .end local v4    # "feat":Landroid/content/pm/FeatureInfo;
    :goto_27
    goto :goto_26

    .line 411
    :cond_60
    invoke-interface {v2}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v0

    .line 412
    .local v0, "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    if-nez v11, :cond_62

    .line 413
    const/4 v15, 0x4

    invoke-virtual {v6, v15}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 414
    move-object/from16 v4, v22

    .end local v22    # "packageName":Ljava/lang/String;
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {v0, v3, v6, v4}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpActivityResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    goto :goto_28

    .line 413
    .end local v4    # "packageName":Ljava/lang/String;
    .restart local v22    # "packageName":Ljava/lang/String;
    :cond_61
    move-object/from16 v4, v22

    .end local v22    # "packageName":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    goto :goto_28

    .line 412
    .end local v4    # "packageName":Ljava/lang/String;
    .restart local v22    # "packageName":Ljava/lang/String;
    :cond_62
    move-object/from16 v4, v22

    .line 416
    .end local v22    # "packageName":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    :goto_28
    nop

    nop

    if-nez v11, :cond_63

    .line 417
    const/16 v5, 0x10

    invoke-virtual {v6, v5}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 418
    invoke-interface {v0, v3, v6, v4}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpReceiverResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    .line 420
    :cond_63
    nop

    nop

    if-nez v11, :cond_64

    .line 421
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 422
    invoke-interface {v0, v3, v6, v4}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServiceResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    .line 424
    :cond_64
    nop

    nop

    if-nez v11, :cond_65

    .line 425
    const/16 v5, 0x20

    invoke-virtual {v6, v5}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 426
    invoke-interface {v0, v3, v6, v4}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpProviderResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    .line 429
    :cond_65
    nop

    nop

    if-nez v11, :cond_66

    .line 430
    const/16 v5, 0x1000

    invoke-virtual {v6, v5}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 431
    invoke-interface {v2, v5, v8, v3, v6}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 434
    :cond_66
    nop

    nop

    if-nez v11, :cond_67

    .line 435
    const/16 v5, 0x2000

    invoke-virtual {v6, v5}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v7

    if-eqz v7, :cond_67

    if-nez v4, :cond_67

    .line 436
    invoke-interface {v2, v5, v8, v3, v6}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 439
    :cond_67
    nop

    nop

    if-nez v11, :cond_68

    .line 440
    const/high16 v5, 0x40000

    invoke-virtual {v6, v5}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 441
    invoke-interface {v2, v5, v8, v3, v6}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 444
    :cond_68
    if-nez v11, :cond_6a

    .line 445
    const/16 v5, 0x40

    invoke-virtual {v6, v5}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 446
    move-object/from16 v5, v21

    .end local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v5, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/server/pm/Computer;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    goto :goto_29

    .line 445
    .end local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_69
    move-object/from16 v5, v21

    .end local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_29

    .line 444
    .end local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_6a
    move-object/from16 v5, v21

    .line 449
    .end local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_29
    nop

    nop

    if-nez v11, :cond_6b

    .line 450
    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 451
    invoke-interface {v0, v2, v3, v6, v4}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpContentProviders(Lcom/android/server/pm/Computer;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    .line 455
    :cond_6b
    nop

    nop

    if-nez v11, :cond_6c

    .line 456
    const/16 v7, 0x4000

    invoke-virtual {v6, v7}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 457
    invoke-interface {v2, v3, v4, v6}, Lcom/android/server/pm/Computer;->dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V

    .line 460
    :cond_6c
    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 461
    move v7, v11

    const/16 v14, 0x200

    .end local v11    # "checkin":Z
    .local v7, "checkin":Z
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    goto :goto_2a

    .line 460
    .end local v7    # "checkin":Z
    .restart local v11    # "checkin":Z
    :cond_6d
    move v7, v11

    const/16 v14, 0x200

    .line 464
    .end local v11    # "checkin":Z
    .restart local v7    # "checkin":Z
    :goto_2a
    nop

    nop

    if-nez v7, :cond_6e

    .line 465
    const/high16 v11, 0x4000000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v13

    if-eqz v13, :cond_6e

    .line 466
    invoke-interface {v2, v11, v8, v3, v6}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 469
    :cond_6e
    const/16 v11, 0x100

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v11

    if-eqz v11, :cond_6f

    .line 470
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    .line 474
    :cond_6f
    nop

    nop

    if-nez v7, :cond_71

    .line 475
    const/high16 v11, 0x400000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v11

    if-eqz v11, :cond_71

    if-nez v4, :cond_71

    .line 477
    invoke-virtual {v6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v11

    if-eqz v11, :cond_70

    .line 478
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 480
    :cond_70
    const-string v11, "Package Changes:"

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    iget-object v11, v1, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    new-instance v13, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;

    invoke-direct {v13, v3}, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v11, v13}, Lcom/android/server/pm/ChangedPackagesTracker;->iterateAll(Ljava/util/function/BiConsumer;)V

    .line 509
    :cond_71
    nop

    nop

    if-nez v7, :cond_72

    .line 510
    const/high16 v11, 0x80000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v13

    if-eqz v13, :cond_72

    if-nez v4, :cond_72

    .line 512
    invoke-interface {v2, v11, v8, v3, v6}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 515
    :cond_72
    nop

    nop

    if-nez v7, :cond_73

    .line 516
    const/high16 v11, 0x800000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v11

    if-eqz v11, :cond_73

    if-nez v4, :cond_73

    .line 518
    iget-object v11, v1, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    invoke-virtual {v11, v3, v6}, Lcom/android/server/pm/StorageEventHelper;->dumpLoadedVolumes(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 521
    :cond_73
    nop

    nop

    if-nez v7, :cond_74

    .line 522
    const/high16 v11, 0x1000000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v11

    if-eqz v11, :cond_74

    if-nez v4, :cond_74

    .line 524
    invoke-interface {v0, v3, v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServicePermissions(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 527
    :cond_74
    nop

    nop

    if-nez v7, :cond_75

    .line 528
    const/high16 v11, 0x100000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v13

    if-eqz v13, :cond_75

    .line 529
    invoke-interface {v2, v11, v8, v3, v6}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 532
    :cond_75
    nop

    nop

    if-nez v7, :cond_76

    .line 533
    const/high16 v11, 0x200000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v13

    if-eqz v13, :cond_76

    .line 534
    invoke-interface {v2, v11, v8, v3, v6}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 537
    :cond_76
    invoke-virtual {v6, v14}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v11

    if-eqz v11, :cond_79

    if-nez v4, :cond_79

    .line 539
    if-nez v7, :cond_78

    .line 540
    invoke-virtual {v6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v11

    if-eqz v11, :cond_77

    .line 541
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 543
    :cond_77
    invoke-interface {v2, v14, v8, v3, v6}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 544
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 545
    const-string v11, "Package warning messages:"

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    const/4 v11, 0x0

    invoke-static {v3, v11}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2b

    .line 548
    :cond_78
    const-string/jumbo v11, "msg,"

    invoke-static {v3, v11}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 553
    :cond_79
    :goto_2b
    nop

    nop

    if-nez v7, :cond_7b

    .line 554
    const/high16 v11, 0x10000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v11

    if-eqz v11, :cond_7b

    if-nez v4, :cond_7b

    .line 558
    invoke-virtual {v6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v11

    if-eqz v11, :cond_7a

    .line 559
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 561
    :cond_7a
    iget-object v11, v1, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    new-instance v13, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v14, 0x78

    invoke-direct {v13, v3, v10, v14}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {v11, v13}, Lcom/android/server/pm/PackageInstallerService;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 564
    :cond_7b
    if-nez v7, :cond_7c

    const/high16 v11, 0x2000000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v11

    if-eqz v11, :cond_7c

    .line 565
    const/high16 v11, 0x2000000

    invoke-interface {v2, v11, v8, v3, v6}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 568
    :cond_7c
    if-nez v7, :cond_80

    .line 569
    const/high16 v11, 0x10000000

    invoke-virtual {v6, v11}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v11

    if-eqz v11, :cond_7f

    if-nez v4, :cond_7f

    .line 571
    invoke-virtual {v6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v11

    if-eqz v11, :cond_7d

    .line 572
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 574
    :cond_7d
    const-string v11, "Per UID read timeouts:"

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    Default timeouts flag: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getDefaultTimeouts()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    Known digesters list flag: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getKnownDigestersList()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 576
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    Timeouts ("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    array-length v13, v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "):"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    iget-object v11, v1, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    array-length v13, v11

    :goto_2c
    if-ge v9, v13, :cond_7e

    aget-object v14, v11, v9

    .line 581
    .local v14, "item":Landroid/os/incremental/PerUidReadTimeouts;
    const-string v15, "        ("

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .local v16, "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    const-string/jumbo v0, "uid="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v14, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 583
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "minTimeUs="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v4

    move-object/from16 v21, v5

    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "packageName":Ljava/lang/String;
    iget-wide v4, v14, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "minPendingTimeUs="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v14, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxPendingTimeUs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v14, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    .end local v14    # "item":Landroid/os/incremental/PerUidReadTimeouts;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p1

    move-object/from16 v0, v16

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    goto/16 :goto_2c

    .end local v16    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .end local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v22    # "packageName":Ljava/lang/String;
    .restart local v0    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_7e
    move-object/from16 v16, v0

    move-object/from16 v22, v4

    move-object/from16 v21, v5

    .end local v0    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .restart local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "packageName":Ljava/lang/String;
    goto :goto_2d

    .line 569
    .end local v16    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .end local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v22    # "packageName":Ljava/lang/String;
    .restart local v0    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_7f
    move-object/from16 v16, v0

    move-object/from16 v22, v4

    move-object/from16 v21, v5

    .end local v0    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .restart local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "packageName":Ljava/lang/String;
    goto :goto_2d

    .line 568
    .end local v16    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .end local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v22    # "packageName":Ljava/lang/String;
    .restart local v0    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_80
    move-object/from16 v16, v0

    move-object/from16 v22, v4

    move-object/from16 v21, v5

    .line 590
    .end local v0    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .restart local v21    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "packageName":Ljava/lang/String;
    :goto_2d
    if-nez v7, :cond_83

    .line 591
    const/high16 v0, 0x20000000

    invoke-virtual {v6, v0}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v0

    if-eqz v0, :cond_82

    if-nez v22, :cond_82

    .line 593
    invoke-virtual {v6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 594
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 596
    :cond_81
    const-string v0, "Snapshot statistics:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    iget-object v9, v1, Lcom/android/server/pm/DumpHelper;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v12

    .line 598
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getUsed()I

    move-result v14

    invoke-virtual {v6}, Lcom/android/server/pm/DumpState;->isBrief()Z

    move-result v15

    .line 597
    const-string v11, "   "

    move-object v0, v10

    move-object v10, v3

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JIZ)V

    goto :goto_2e

    .line 591
    :cond_82
    move-object v0, v10

    goto :goto_2e

    .line 590
    :cond_83
    move-object v0, v10

    .line 601
    :goto_2e
    nop

    nop

    if-nez v7, :cond_85

    .line 602
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v6, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_85

    if-nez v22, :cond_85

    .line 604
    invoke-virtual {v6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 605
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 607
    :cond_84
    const-string v2, "Protected broadcast actions:"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    iget-object v4, v1, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_85

    .line 609
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    iget-object v4, v1, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 614
    .end local v2    # "i":I
    :cond_85
    return-void
.end method
