.class public abstract Landroid/os/IInstalld$Stub;
.super Landroid/os/Binder;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInstalld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IInstalld$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IInstalld"

.field static final TRANSACTION_cleanupInvalidPackageDirs:I = 0x31

.field static final TRANSACTION_clearAppData:I = 0x9

.field static final TRANSACTION_clearAppProfiles:I = 0x19

.field static final TRANSACTION_controlDexOptBlocking:I = 0x14

.field static final TRANSACTION_copySystemProfile:I = 0x18

.field static final TRANSACTION_createAppData:I = 0x4

.field static final TRANSACTION_createAppDataBatched:I = 0x5

.field static final TRANSACTION_createFsveritySetupAuthToken:I = 0x33

.field static final TRANSACTION_createOatDir:I = 0x21

.field static final TRANSACTION_createProfileSnapshot:I = 0x1c

.field static final TRANSACTION_createUserData:I = 0x1

.field static final TRANSACTION_deleteOdex:I = 0x24

.field static final TRANSACTION_deleteReferenceProfile:I = 0x1b

.field static final TRANSACTION_destroyAppData:I = 0xa

.field static final TRANSACTION_destroyAppDataSnapshot:I = 0x2c

.field static final TRANSACTION_destroyAppProfiles:I = 0x1a

.field static final TRANSACTION_destroyCeSnapshotsNotSpecified:I = 0x2d

.field static final TRANSACTION_destroyProfileSnapshot:I = 0x1d

.field static final TRANSACTION_destroyUserData:I = 0x2

.field static final TRANSACTION_dexopt:I = 0x13

.field static final TRANSACTION_dumpProfiles:I = 0x17

.field static final TRANSACTION_enableFsverity:I = 0x34

.field static final TRANSACTION_fixupAppData:I = 0xb

.field static final TRANSACTION_freeCache:I = 0x1f

.field static final TRANSACTION_getAppCrates:I = 0xf

.field static final TRANSACTION_getAppSize:I = 0xc

.field static final TRANSACTION_getExternalSize:I = 0xe

.field static final TRANSACTION_getOdexVisibility:I = 0x32

.field static final TRANSACTION_getUserCrates:I = 0x10

.field static final TRANSACTION_getUserSize:I = 0xd

.field static final TRANSACTION_hashSecondaryDexFile:I = 0x26

.field static final TRANSACTION_invalidateMounts:I = 0x27

.field static final TRANSACTION_isQuotaSupported:I = 0x28

.field static final TRANSACTION_linkFile:I = 0x22

.field static final TRANSACTION_linkNativeLibraryDirectory:I = 0x20

.field static final TRANSACTION_mergeProfiles:I = 0x16

.field static final TRANSACTION_migrateAppData:I = 0x8

.field static final TRANSACTION_migrateLegacyObbData:I = 0x30

.field static final TRANSACTION_moveAb:I = 0x23

.field static final TRANSACTION_moveCompleteApp:I = 0x12

.field static final TRANSACTION_onPrivateVolumeRemoved:I = 0x2f

.field static final TRANSACTION_prepareAppProfile:I = 0x29

.field static final TRANSACTION_reconcileSdkData:I = 0x6

.field static final TRANSACTION_reconcileSecondaryDexFile:I = 0x25

.field static final TRANSACTION_restoreAppDataSnapshot:I = 0x2b

.field static final TRANSACTION_restoreconAppData:I = 0x7

.field static final TRANSACTION_rmPackageDir:I = 0x1e

.field static final TRANSACTION_rmdex:I = 0x15

.field static final TRANSACTION_setAppQuota:I = 0x11

.field static final TRANSACTION_setFirstBoot:I = 0x3

.field static final TRANSACTION_snapshotAppData:I = 0x2a

.field static final TRANSACTION_tryMountDataMirror:I = 0x2e


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 207
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 208
    const-string v0, "android.os.IInstalld"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 216
    if-nez p0, :cond_0

    .line 217
    const/4 v0, 0x0

    return-object v0

    .line 219
    :cond_0
    const-string v0, "android.os.IInstalld"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 220
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IInstalld;

    if-eqz v1, :cond_1

    .line 221
    move-object v1, v0

    check-cast v1, Landroid/os/IInstalld;

    return-object v1

    .line 223
    :cond_1
    new-instance v1, Landroid/os/IInstalld$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IInstalld$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 227
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    move-object/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.os.IInstalld"

    .line 232
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v1, 0xffffff

    if-gt v8, v1, :cond_0

    .line 233
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    :cond_0
    const v1, 0x5f4e5446

    if-ne v8, v1, :cond_1

    .line 236
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    return v12

    .line 239
    :cond_1
    packed-switch v8, :pswitch_data_0

    .line 989
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 976
    :pswitch_0
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v1

    .line 978
    .local v1, "_arg0":Landroid/os/IInstalld$IFsveritySetupAuthToken;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 980
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 981
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 983
    .local v4, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 964
    .end local v1    # "_arg0":Landroid/os/IInstalld$IFsveritySetupAuthToken;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_1
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 966
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 967
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v3

    .line 969
    .local v3, "_result":Landroid/os/IInstalld$IFsveritySetupAuthToken;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 971
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 948
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/os/IInstalld$IFsveritySetupAuthToken;
    :pswitch_2
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 950
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 952
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 954
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 955
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 957
    .local v5, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 935
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_3
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 937
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 939
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 940
    .local v3, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V

    .line 942
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 928
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_4
    invoke-interface {v0}, Landroid/os/IInstalld;->migrateLegacyObbData()V

    .line 929
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 920
    :pswitch_5
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 921
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->onPrivateVolumeRemoved(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 911
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 912
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->tryMountDataMirror(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 898
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 900
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 902
    .restart local v2    # "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 903
    .local v3, "_arg2":[I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V

    .line 905
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 879
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    :pswitch_8
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 881
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 883
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 885
    .local v3, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 887
    .local v4, "_arg3":J
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 889
    .local v6, "_arg4":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 890
    .local v7, "_arg5":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 892
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    move-object/from16 v0, p0

    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 858
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":J
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    :pswitch_9
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 860
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 862
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 864
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 866
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 868
    .local v5, "_arg4":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 870
    .local v6, "_arg5":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 871
    .local v7, "_arg6":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 873
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 840
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    :pswitch_a
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 842
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 844
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 846
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 848
    .local v4, "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 849
    .restart local v5    # "_arg4":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 850
    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v6

    .line 851
    .local v6, "_result":J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    invoke-virtual {v10, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 853
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 820
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":J
    :pswitch_b
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 822
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 824
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 826
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 828
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 830
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 831
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 833
    .local v7, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    invoke-virtual {v10, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 835
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 810
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_result":Z
    :pswitch_c
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 811
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v2

    .line 813
    .local v2, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 815
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 803
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_d
    invoke-interface {v0}, Landroid/os/IInstalld;->invalidateMounts()V

    .line 804
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 786
    :pswitch_e
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 788
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 790
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 792
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 794
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 795
    .local v5, "_arg4":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v6

    .line 797
    .local v6, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 799
    move-object/from16 v0, p0

    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 766
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":[B
    :pswitch_f
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 768
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 770
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 772
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 774
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 776
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 777
    .local v6, "_arg5":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    .line 779
    .restart local v7    # "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    invoke-virtual {v10, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 781
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 750
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_result":Z
    :pswitch_10
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 752
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 754
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 756
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 757
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    .line 759
    .local v5, "_result":J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    invoke-virtual {v10, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 761
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 735
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":J
    :pswitch_11
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 737
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 739
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 741
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 742
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 720
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 722
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 724
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 726
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 727
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 707
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 709
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 711
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 712
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 692
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_14
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 694
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 696
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 698
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 699
    .local v4, "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 701
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 679
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_15
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 681
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 683
    .local v2, "_arg1":J
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 684
    .local v4, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 685
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JI)V

    .line 686
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 668
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    :pswitch_16
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 670
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 657
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 659
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 660
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 641
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_18
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 643
    .local v1, "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 645
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 647
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 648
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 650
    .local v5, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 652
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 630
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_19
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 633
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 621
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 622
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->destroyAppProfiles(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 610
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 612
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 613
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 594
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 596
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 598
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 600
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 601
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 603
    .restart local v5    # "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 605
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 576
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_1d
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 578
    .local v1, "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 582
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 584
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 585
    .local v5, "_arg4":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 587
    .local v6, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 589
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 562
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Z
    :pswitch_1e
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 564
    .restart local v1    # "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 566
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 567
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 569
    .local v4, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 551
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_1f
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 554
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->rmdex(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 542
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_20
    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 543
    .local v1, "_arg0":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->controlDexOptBlocking(Z)V

    .line 545
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_0

    .line 502
    .end local v1    # "_arg0":Z
    :pswitch_21
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 506
    .local v3, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 508
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 510
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 512
    .local v6, "_arg4":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 514
    .local v7, "_arg5":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 516
    .local v8, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 518
    .local v9, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 520
    .local v10, "_arg8":Ljava/lang/String;
    move-object v1, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v1, "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 522
    .local v11, "_arg9":Ljava/lang/String;
    move v13, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 524
    .local v12, "_arg10":Ljava/lang/String;
    move v14, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 526
    .local v13, "_arg11":Z
    move v15, v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 528
    .local v14, "_arg12":I
    move/from16 v16, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 530
    .local v15, "_arg13":Ljava/lang/String;
    move/from16 v17, v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 532
    .local v16, "_arg14":Ljava/lang/String;
    move/from16 v18, v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 533
    .local v17, "_arg15":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 534
    move-object/from16 v18, v1

    move-object v1, v0

    .end local v1    # "descriptor":Ljava/lang/String;
    .local v18, "descriptor":Ljava/lang/String;
    invoke-interface/range {v1 .. v17}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 535
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 537
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object v10, v1

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 481
    .end local v0    # "_result":Z
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":Ljava/lang/String;
    .end local v10    # "_arg8":Ljava/lang/String;
    .end local v12    # "_arg10":Ljava/lang/String;
    .end local v13    # "_arg11":Z
    .end local v14    # "_arg12":I
    .end local v15    # "_arg13":Ljava/lang/String;
    .end local v16    # "_arg14":Ljava/lang/String;
    .end local v17    # "_arg15":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_22
    move-object v1, v10

    move-object/from16 v18, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 489
    .local v4, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 491
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 493
    .local v6, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 494
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 496
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 466
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_23
    move-object/from16 v18, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 468
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 472
    .local v3, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 473
    .local v4, "_arg3":J
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 475
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 454
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_24
    move-object/from16 v18, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 456
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 457
    .restart local v2    # "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v3

    .line 459
    .local v3, "_result":[Landroid/os/storage/CrateMetadata;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    const/4 v13, 0x1

    invoke-virtual {v10, v3, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 461
    goto/16 :goto_0

    .line 440
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[Landroid/os/storage/CrateMetadata;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_25
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 442
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 445
    .local v3, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v4

    .line 447
    .local v4, "_result":[Landroid/os/storage/CrateMetadata;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {v10, v4, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 449
    goto/16 :goto_0

    .line 424
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":[Landroid/os/storage/CrateMetadata;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_26
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 426
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 428
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 430
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 431
    .local v4, "_arg3":[I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v5

    .line 433
    .local v5, "_result":[J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 435
    goto/16 :goto_0

    .line 408
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[I
    .end local v5    # "_result":[J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_27
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 410
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 412
    .restart local v2    # "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 414
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 415
    .restart local v4    # "_arg3":[I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v5

    .line 417
    .restart local v5    # "_result":[J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 419
    goto/16 :goto_0

    .line 386
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[I
    .end local v5    # "_result":[J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_28
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 388
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 392
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 394
    .local v4, "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 396
    .local v5, "_arg4":I
    invoke-virtual {v9}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    .line 398
    .local v6, "_arg5":[J
    invoke-virtual {v9}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 399
    .local v7, "_arg6":[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v8

    .line 401
    .local v8, "_result":[J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 403
    goto/16 :goto_0

    .line 375
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":[J
    .end local v7    # "_arg6":[Ljava/lang/String;
    .end local v8    # "_result":[J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_29
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 377
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 378
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V

    .line 380
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    goto/16 :goto_0

    .line 358
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 360
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 364
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 366
    .restart local v4    # "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 367
    .local v5, "_arg4":J
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 369
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 341
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2b
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 343
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 347
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 349
    .restart local v4    # "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 350
    .restart local v5    # "_arg4":J
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 352
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    goto/16 :goto_0

    .line 326
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2c
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 328
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 330
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 332
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 333
    .restart local v4    # "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 335
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    goto/16 :goto_0

    .line 307
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2d
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 309
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 313
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 315
    .restart local v4    # "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 317
    .local v5, "_arg4":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 320
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    goto/16 :goto_0

    .line 298
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2e
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/os/ReconcileSdkDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ReconcileSdkDataArgs;

    .line 299
    .local v1, "_arg0":Landroid/os/ReconcileSdkDataArgs;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V

    .line 301
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    goto/16 :goto_0

    .line 288
    .end local v1    # "_arg0":Landroid/os/ReconcileSdkDataArgs;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2f
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/CreateAppDataArgs;

    .line 289
    .local v1, "_arg0":[Landroid/os/CreateAppDataArgs;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v2

    .line 291
    .local v2, "_result":[Landroid/os/CreateAppDataResult;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {v10, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 293
    goto :goto_0

    .line 278
    .end local v1    # "_arg0":[Landroid/os/CreateAppDataArgs;
    .end local v2    # "_result":[Landroid/os/CreateAppDataResult;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_30
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CreateAppDataArgs;

    .line 279
    .local v1, "_arg0":Landroid/os/CreateAppDataArgs;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object v2

    .line 281
    .local v2, "_result":Landroid/os/CreateAppDataResult;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {v10, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 283
    goto :goto_0

    .line 271
    .end local v1    # "_arg0":Landroid/os/CreateAppDataArgs;
    .end local v2    # "_result":Landroid/os/CreateAppDataResult;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_31
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-interface {v0}, Landroid/os/IInstalld;->setFirstBoot()V

    .line 272
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto :goto_0

    .line 259
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_32
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 264
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V

    .line 266
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto :goto_0

    .line 244
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_33
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 246
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 248
    .restart local v2    # "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 250
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 251
    .restart local v4    # "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V

    .line 253
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    nop

    .line 992
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
