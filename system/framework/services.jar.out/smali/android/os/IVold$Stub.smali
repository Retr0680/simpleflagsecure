.class public abstract Landroid/os/IVold$Stub;
.super Landroid/os/Binder;
.source "IVold.java"

# interfaces
.implements Landroid/os/IVold;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVold$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVold"

.field static final TRANSACTION_abortChanges:I = 0x39

.field static final TRANSACTION_abortFuse:I = 0x2

.field static final TRANSACTION_abortIdleMaint:I = 0x1e

.field static final TRANSACTION_addAppIds:I = 0xa

.field static final TRANSACTION_addSandboxIds:I = 0xb

.field static final TRANSACTION_benchmark:I = 0x12

.field static final TRANSACTION_bindMount:I = 0x4b

.field static final TRANSACTION_commitChanges:I = 0x3a

.field static final TRANSACTION_createObb:I = 0x1a

.field static final TRANSACTION_createStubVolume:I = 0x44

.field static final TRANSACTION_createUserStorageKeys:I = 0x2b

.field static final TRANSACTION_destroyDsuMetadataKey:I = 0x4c

.field static final TRANSACTION_destroyObb:I = 0x1b

.field static final TRANSACTION_destroySandboxForApp:I = 0x34

.field static final TRANSACTION_destroyStubVolume:I = 0x45

.field static final TRANSACTION_destroyUserStorage:I = 0x32

.field static final TRANSACTION_destroyUserStorageKeys:I = 0x2c

.field static final TRANSACTION_earlyBootEnded:I = 0x43

.field static final TRANSACTION_encryptFstab:I = 0x29

.field static final TRANSACTION_ensureAppDirsCreated:I = 0x19

.field static final TRANSACTION_fbeEnable:I = 0x26

.field static final TRANSACTION_fixupAppDir:I = 0x18

.field static final TRANSACTION_forceStopGC:I = 0x22

.field static final TRANSACTION_forgetPartition:I = 0xe

.field static final TRANSACTION_format:I = 0x11

.field static final TRANSACTION_fstrim:I = 0x1c

.field static final TRANSACTION_getStorageLifeTime:I = 0x1f

.field static final TRANSACTION_getStorageRemainingLifetime:I = 0x4e

.field static final TRANSACTION_getStorageSize:I = 0x4d

.field static final TRANSACTION_getUnlockedUsers:I = 0x2e

.field static final TRANSACTION_getWriteAmount:I = 0x23

.field static final TRANSACTION_getWriteBoosterBufferAvailablePercent:I = 0x50

.field static final TRANSACTION_getWriteBoosterBufferSize:I = 0x4f

.field static final TRANSACTION_getWriteBoosterLifeTimeEstimate:I = 0x53

.field static final TRANSACTION_incFsEnabled:I = 0x47

.field static final TRANSACTION_initUser0:I = 0x27

.field static final TRANSACTION_isCheckpointing:I = 0x38

.field static final TRANSACTION_lockCeStorage:I = 0x30

.field static final TRANSACTION_markBootAttempt:I = 0x3e

.field static final TRANSACTION_monitor:I = 0x3

.field static final TRANSACTION_mount:I = 0xf

.field static final TRANSACTION_mountAppFuse:I = 0x24

.field static final TRANSACTION_mountFstab:I = 0x28

.field static final TRANSACTION_mountIncFs:I = 0x48

.field static final TRANSACTION_moveStorage:I = 0x13

.field static final TRANSACTION_needsCheckpoint:I = 0x36

.field static final TRANSACTION_needsRollback:I = 0x37

.field static final TRANSACTION_onSecureKeyguardStateChanged:I = 0xc

.field static final TRANSACTION_onUserAdded:I = 0x6

.field static final TRANSACTION_onUserRemoved:I = 0x7

.field static final TRANSACTION_onUserStarted:I = 0x8

.field static final TRANSACTION_onUserStopped:I = 0x9

.field static final TRANSACTION_openAppFuseFile:I = 0x46

.field static final TRANSACTION_partition:I = 0xd

.field static final TRANSACTION_prepareCheckpoint:I = 0x3b

.field static final TRANSACTION_prepareSandboxForApp:I = 0x33

.field static final TRANSACTION_prepareUserStorage:I = 0x31

.field static final TRANSACTION_refreshLatestWrite:I = 0x21

.field static final TRANSACTION_remountAppStorageDirs:I = 0x15

.field static final TRANSACTION_remountUid:I = 0x14

.field static final TRANSACTION_reset:I = 0x4

.field static final TRANSACTION_resetCheckpoint:I = 0x42

.field static final TRANSACTION_restoreCheckpoint:I = 0x3c

.field static final TRANSACTION_restoreCheckpointPart:I = 0x3d

.field static final TRANSACTION_runIdleMaint:I = 0x1d

.field static final TRANSACTION_setCeStorageProtection:I = 0x2d

.field static final TRANSACTION_setGCUrgentPace:I = 0x20

.field static final TRANSACTION_setIncFsMountOptions:I = 0x4a

.field static final TRANSACTION_setListener:I = 0x1

.field static final TRANSACTION_setStorageBindingSeed:I = 0x2a

.field static final TRANSACTION_setWriteBoosterBufferFlush:I = 0x51

.field static final TRANSACTION_setWriteBoosterBufferOn:I = 0x52

.field static final TRANSACTION_setupAppDir:I = 0x17

.field static final TRANSACTION_shutdown:I = 0x5

.field static final TRANSACTION_startCheckpoint:I = 0x35

.field static final TRANSACTION_supportsBlockCheckpoint:I = 0x40

.field static final TRANSACTION_supportsCheckpoint:I = 0x3f

.field static final TRANSACTION_supportsFileCheckpoint:I = 0x41

.field static final TRANSACTION_unlockCeStorage:I = 0x2f

.field static final TRANSACTION_unmount:I = 0x10

.field static final TRANSACTION_unmountAppFuse:I = 0x25

.field static final TRANSACTION_unmountAppStorageDirs:I = 0x16

.field static final TRANSACTION_unmountIncFs:I = 0x49


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 303
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 304
    const-string v0, "android.os.IVold"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVold;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 312
    if-nez p0, :cond_0

    .line 313
    const/4 v0, 0x0

    return-object v0

    .line 315
    :cond_0
    const-string v0, "android.os.IVold"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 316
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVold;

    if-eqz v1, :cond_1

    .line 317
    move-object v1, v0

    check-cast v1, Landroid/os/IVold;

    return-object v1

    .line 319
    :cond_1
    new-instance v1, Landroid/os/IVold$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IVold$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 323
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.os.IVold"

    .line 328
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_0

    const v1, 0xffffff

    if-gt v10, v1, :cond_0

    .line 329
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    :cond_0
    const v1, 0x5f4e5446

    if-ne v10, v1, :cond_1

    .line 332
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    return v14

    .line 335
    :cond_1
    packed-switch v10, :pswitch_data_0

    .line 1168
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1161
    :pswitch_0
    invoke-interface {p0}, Landroid/os/IVold;->getWriteBoosterLifeTimeEstimate()I

    move-result v1

    .line 1162
    .local v1, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    goto/16 :goto_0

    .line 1152
    .end local v1    # "_result":I
    :pswitch_1
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1153
    .local v1, "_arg0":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1154
    invoke-interface {p0, v1}, Landroid/os/IVold;->setWriteBoosterBufferOn(Z)Z

    move-result v2

    .line 1155
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1157
    goto/16 :goto_0

    .line 1142
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1143
    .restart local v1    # "_arg0":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    invoke-interface {p0, v1}, Landroid/os/IVold;->setWriteBoosterBufferFlush(Z)Z

    move-result v2

    .line 1145
    .restart local v2    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1147
    goto/16 :goto_0

    .line 1134
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-interface {p0}, Landroid/os/IVold;->getWriteBoosterBufferAvailablePercent()I

    move-result v1

    .line 1135
    .local v1, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1137
    goto/16 :goto_0

    .line 1127
    .end local v1    # "_result":I
    :pswitch_4
    invoke-interface {p0}, Landroid/os/IVold;->getWriteBoosterBufferSize()I

    move-result v1

    .line 1128
    .restart local v1    # "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    goto/16 :goto_0

    .line 1120
    .end local v1    # "_result":I
    :pswitch_5
    invoke-interface {p0}, Landroid/os/IVold;->getStorageRemainingLifetime()I

    move-result v1

    .line 1121
    .restart local v1    # "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    goto/16 :goto_0

    .line 1113
    .end local v1    # "_result":I
    :pswitch_6
    invoke-interface {p0}, Landroid/os/IVold;->getStorageSize()J

    move-result-wide v1

    .line 1114
    .local v1, "_result":J
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    invoke-virtual {v12, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1116
    goto/16 :goto_0

    .line 1105
    .end local v1    # "_result":J
    :pswitch_7
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1106
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyDsuMetadataKey(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    goto/16 :goto_0

    .line 1094
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1096
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1097
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->bindMount(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    goto/16 :goto_0

    .line 1079
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_9
    sget-object v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;

    .line 1081
    .local v1, "_arg0":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1083
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1085
    .local v3, "_arg2":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1086
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1087
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/os/IVold;->setIncFsMountOptions(Landroid/os/incremental/IncrementalFileSystemControlParcel;ZZLjava/lang/String;)V

    .line 1088
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    goto/16 :goto_0

    .line 1070
    .end local v1    # "_arg0":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    invoke-interface {p0, v1}, Landroid/os/IVold;->unmountIncFs(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    goto/16 :goto_0

    .line 1054
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1056
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1058
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1060
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1061
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/os/IVold;->mountIncFs(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/incremental/IncrementalFileSystemControlParcel;

    move-result-object v5

    .line 1063
    .local v5, "_result":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    invoke-virtual {v12, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1065
    goto/16 :goto_0

    .line 1046
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    :pswitch_c
    invoke-interface {p0}, Landroid/os/IVold;->incFsEnabled()Z

    move-result v1

    .line 1047
    .local v1, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1049
    goto/16 :goto_0

    .line 1031
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1033
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1035
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1037
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1038
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1039
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/os/IVold;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    move-result-object v5

    .line 1040
    .local v5, "_result":Ljava/io/FileDescriptor;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1042
    goto/16 :goto_0

    .line 1022
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Ljava/io/FileDescriptor;
    :pswitch_e
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1023
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1024
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyStubVolume(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    goto/16 :goto_0

    .line 1002
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1004
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1006
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1008
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1010
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1012
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1013
    .local v6, "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1014
    move-object v0, p0

    invoke-interface/range {v0 .. v6}, Landroid/os/IVold;->createStubVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1015
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    invoke-virtual {v12, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1017
    goto/16 :goto_0

    .line 995
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_result":Ljava/lang/String;
    :pswitch_10
    invoke-interface {p0}, Landroid/os/IVold;->earlyBootEnded()V

    .line 996
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    goto/16 :goto_0

    .line 989
    :pswitch_11
    invoke-interface {p0}, Landroid/os/IVold;->resetCheckpoint()V

    .line 990
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    goto/16 :goto_0

    .line 982
    :pswitch_12
    invoke-interface {p0}, Landroid/os/IVold;->supportsFileCheckpoint()Z

    move-result v1

    .line 983
    .local v1, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 985
    goto/16 :goto_0

    .line 975
    .end local v1    # "_result":Z
    :pswitch_13
    invoke-interface {p0}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    move-result v1

    .line 976
    .restart local v1    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 978
    goto/16 :goto_0

    .line 968
    .end local v1    # "_result":Z
    :pswitch_14
    invoke-interface {p0}, Landroid/os/IVold;->supportsCheckpoint()Z

    move-result v1

    .line 969
    .restart local v1    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 971
    goto/16 :goto_0

    .line 962
    .end local v1    # "_result":Z
    :pswitch_15
    invoke-interface {p0}, Landroid/os/IVold;->markBootAttempt()V

    .line 963
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    goto/16 :goto_0

    .line 952
    :pswitch_16
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 955
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->restoreCheckpointPart(Ljava/lang/String;I)V

    .line 957
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    goto/16 :goto_0

    .line 943
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_17
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 944
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 945
    invoke-interface {p0, v1}, Landroid/os/IVold;->restoreCheckpoint(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    goto/16 :goto_0

    .line 936
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_18
    invoke-interface {p0}, Landroid/os/IVold;->prepareCheckpoint()V

    .line 937
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    goto/16 :goto_0

    .line 930
    :pswitch_19
    invoke-interface {p0}, Landroid/os/IVold;->commitChanges()V

    .line 931
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    goto/16 :goto_0

    .line 920
    :pswitch_1a
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 922
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 923
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 925
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    goto/16 :goto_0

    .line 912
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_1b
    invoke-interface {p0}, Landroid/os/IVold;->isCheckpointing()Z

    move-result v1

    .line 913
    .local v1, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 915
    goto/16 :goto_0

    .line 905
    .end local v1    # "_result":Z
    :pswitch_1c
    invoke-interface {p0}, Landroid/os/IVold;->needsRollback()Z

    move-result v1

    .line 906
    .restart local v1    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 908
    goto/16 :goto_0

    .line 898
    .end local v1    # "_result":Z
    :pswitch_1d
    invoke-interface {p0}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result v1

    .line 899
    .restart local v1    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 901
    goto/16 :goto_0

    .line 890
    .end local v1    # "_result":Z
    :pswitch_1e
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 891
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    invoke-interface {p0, v1}, Landroid/os/IVold;->startCheckpoint(I)V

    .line 893
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    goto/16 :goto_0

    .line 877
    .end local v1    # "_arg0":I
    :pswitch_1f
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 882
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 883
    invoke-interface {p0, v1, v2, v3}, Landroid/os/IVold;->destroySandboxForApp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 884
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    goto/16 :goto_0

    .line 862
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_20
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 864
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 866
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 868
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 869
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 870
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/os/IVold;->prepareSandboxForApp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 871
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    goto/16 :goto_0

    .line 849
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_21
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 851
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 853
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 854
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-interface {p0, v1, v2, v3}, Landroid/os/IVold;->destroyUserStorage(Ljava/lang/String;II)V

    .line 856
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    goto/16 :goto_0

    .line 836
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_22
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 838
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 840
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 841
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-interface {p0, v1, v2, v3}, Landroid/os/IVold;->prepareUserStorage(Ljava/lang/String;II)V

    .line 843
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    goto/16 :goto_0

    .line 827
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_23
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 828
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 829
    invoke-interface {p0, v1}, Landroid/os/IVold;->lockCeStorage(I)V

    .line 830
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    goto/16 :goto_0

    .line 816
    .end local v1    # "_arg0":I
    :pswitch_24
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 818
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 819
    .local v2, "_arg1":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->unlockCeStorage(I[B)V

    .line 821
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    goto/16 :goto_0

    .line 808
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_25
    invoke-interface {p0}, Landroid/os/IVold;->getUnlockedUsers()[I

    move-result-object v1

    .line 809
    .local v1, "_result":[I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 811
    goto/16 :goto_0

    .line 798
    .end local v1    # "_result":[I
    :pswitch_26
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 800
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 801
    .restart local v2    # "_arg1":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->setCeStorageProtection(I[B)V

    .line 803
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    goto/16 :goto_0

    .line 789
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_27
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 790
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyUserStorageKeys(I)V

    .line 792
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    goto/16 :goto_0

    .line 778
    .end local v1    # "_arg0":I
    :pswitch_28
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 780
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 781
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->createUserStorageKeys(IZ)V

    .line 783
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    goto/16 :goto_0

    .line 769
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_29
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 770
    .local v1, "_arg0":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 771
    invoke-interface {p0, v1}, Landroid/os/IVold;->setStorageBindingSeed([B)V

    .line 772
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    goto/16 :goto_0

    .line 746
    .end local v1    # "_arg0":[B
    :pswitch_2a
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 750
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 752
    .local v3, "_arg2":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 754
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 756
    .local v5, "_arg4":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 758
    .local v6, "_arg5":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v7

    .line 760
    .local v7, "_arg6":[Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 761
    .local v8, "_arg7":J
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    move-object v0, p0

    invoke-interface/range {v0 .. v9}, Landroid/os/IVold;->encryptFstab(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z[Ljava/lang/String;[ZJ)V

    .line 763
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    goto/16 :goto_0

    .line 731
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":[Ljava/lang/String;
    .end local v7    # "_arg6":[Z
    .end local v8    # "_arg7":J
    :pswitch_2b
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 733
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 735
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 737
    .restart local v3    # "_arg2":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 738
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/os/IVold;->mountFstab(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 740
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    goto/16 :goto_0

    .line 724
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":[Ljava/lang/String;
    :pswitch_2c
    invoke-interface {p0}, Landroid/os/IVold;->initUser0()V

    .line 725
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    goto/16 :goto_0

    .line 718
    :pswitch_2d
    invoke-interface {p0}, Landroid/os/IVold;->fbeEnable()V

    .line 719
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    goto/16 :goto_0

    .line 708
    :pswitch_2e
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 710
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 711
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 712
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->unmountAppFuse(II)V

    .line 713
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    goto/16 :goto_0

    .line 696
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_2f
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 698
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 699
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->mountAppFuse(II)Ljava/io/FileDescriptor;

    move-result-object v3

    .line 701
    .local v3, "_result":Ljava/io/FileDescriptor;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 703
    goto/16 :goto_0

    .line 688
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/io/FileDescriptor;
    :pswitch_30
    invoke-interface {p0}, Landroid/os/IVold;->getWriteAmount()I

    move-result v1

    .line 689
    .local v1, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    goto/16 :goto_0

    .line 682
    .end local v1    # "_result":I
    :pswitch_31
    invoke-interface {p0}, Landroid/os/IVold;->forceStopGC()V

    .line 683
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    goto/16 :goto_0

    .line 676
    :pswitch_32
    invoke-interface {p0}, Landroid/os/IVold;->refreshLatestWrite()V

    .line 677
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    goto/16 :goto_0

    .line 656
    :pswitch_33
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 658
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 660
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 662
    .local v3, "_arg2":F
    invoke-virtual {v11}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 664
    .local v4, "_arg3":F
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 666
    .local v5, "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 668
    .local v6, "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 669
    .local v7, "_arg6":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    move-object v0, p0

    invoke-interface/range {v0 .. v7}, Landroid/os/IVold;->setGCUrgentPace(IIFFIII)V

    .line 671
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    goto/16 :goto_0

    .line 648
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":F
    .end local v4    # "_arg3":F
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    :pswitch_34
    invoke-interface {p0}, Landroid/os/IVold;->getStorageLifeTime()I

    move-result v1

    .line 649
    .local v1, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    goto/16 :goto_0

    .line 640
    .end local v1    # "_result":I
    :pswitch_35
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 641
    .local v1, "_arg0":Landroid/os/IVoldTaskListener;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-interface {p0, v1}, Landroid/os/IVold;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 643
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    goto/16 :goto_0

    .line 629
    .end local v1    # "_arg0":Landroid/os/IVoldTaskListener;
    :pswitch_36
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 631
    .local v1, "_arg0":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 632
    .local v2, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->runIdleMaint(ZLandroid/os/IVoldTaskListener;)V

    .line 634
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    goto/16 :goto_0

    .line 618
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_37
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 620
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 621
    .restart local v2    # "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 623
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    goto/16 :goto_0

    .line 609
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_38
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyObb(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    goto/16 :goto_0

    .line 597
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_39
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 599
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 600
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->createObb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    goto/16 :goto_0

    .line 586
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 589
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->ensureAppDirsCreated([Ljava/lang/String;I)V

    .line 591
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    goto/16 :goto_0

    .line 575
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_3b
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 578
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->fixupAppDir(Ljava/lang/String;I)V

    .line 580
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    goto/16 :goto_0

    .line 564
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_3c
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 566
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 567
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->setupAppDir(Ljava/lang/String;I)V

    .line 569
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    goto/16 :goto_0

    .line 551
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_3d
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 553
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 555
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, "_arg2":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 557
    invoke-interface {p0, v1, v2, v3}, Landroid/os/IVold;->unmountAppStorageDirs(II[Ljava/lang/String;)V

    .line 558
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    goto/16 :goto_0

    .line 538
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Ljava/lang/String;
    :pswitch_3e
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 540
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 542
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 543
    .restart local v3    # "_arg2":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-interface {p0, v1, v2, v3}, Landroid/os/IVold;->remountAppStorageDirs(II[Ljava/lang/String;)V

    .line 545
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    goto/16 :goto_0

    .line 527
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Ljava/lang/String;
    :pswitch_3f
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 529
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 530
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->remountUid(II)V

    .line 532
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    goto/16 :goto_0

    .line 514
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_40
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v3

    .line 519
    .local v3, "_arg2":Landroid/os/IVoldTaskListener;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-interface {p0, v1, v2, v3}, Landroid/os/IVold;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 521
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    goto/16 :goto_0

    .line 503
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/IVoldTaskListener;
    :pswitch_41
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 505
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 506
    .local v2, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 507
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 508
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    goto/16 :goto_0

    .line 492
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_42
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 494
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    goto/16 :goto_0

    .line 483
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_43
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 484
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    invoke-interface {p0, v1}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    goto/16 :goto_0

    .line 468
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_44
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 470
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 472
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 474
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IVoldMountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldMountCallback;

    move-result-object v4

    .line 475
    .local v4, "_arg3":Landroid/os/IVoldMountCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/os/IVold;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 477
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    goto/16 :goto_0

    .line 457
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/IVoldMountCallback;
    :pswitch_45
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 459
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    goto/16 :goto_0

    .line 444
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_46
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 446
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 448
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 449
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-interface {p0, v1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 451
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    goto/16 :goto_0

    .line 435
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_47
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 436
    .local v1, "_arg0":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-interface {p0, v1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V

    .line 438
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    goto/16 :goto_0

    .line 424
    .end local v1    # "_arg0":Z
    :pswitch_48
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 426
    .local v1, "_arg0":[I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->addSandboxIds([I[Ljava/lang/String;)V

    .line 429
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    goto/16 :goto_0

    .line 413
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_49
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 416
    .local v2, "_arg1":[I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->addAppIds([Ljava/lang/String;[I)V

    .line 418
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    goto/16 :goto_0

    .line 404
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":[I
    :pswitch_4a
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 405
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-interface {p0, v1}, Landroid/os/IVold;->onUserStopped(I)V

    .line 407
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    goto :goto_0

    .line 395
    .end local v1    # "_arg0":I
    :pswitch_4b
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 396
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-interface {p0, v1}, Landroid/os/IVold;->onUserStarted(I)V

    .line 398
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    goto :goto_0

    .line 386
    .end local v1    # "_arg0":I
    :pswitch_4c
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-interface {p0, v1}, Landroid/os/IVold;->onUserRemoved(I)V

    .line 389
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    goto :goto_0

    .line 373
    .end local v1    # "_arg0":I
    :pswitch_4d
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 375
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 377
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 378
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-interface {p0, v1, v2, v3}, Landroid/os/IVold;->onUserAdded(III)V

    .line 380
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    goto :goto_0

    .line 366
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_4e
    invoke-interface {p0}, Landroid/os/IVold;->shutdown()V

    .line 367
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    goto :goto_0

    .line 360
    :pswitch_4f
    invoke-interface {p0}, Landroid/os/IVold;->reset()V

    .line 361
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    goto :goto_0

    .line 354
    :pswitch_50
    invoke-interface {p0}, Landroid/os/IVold;->monitor()V

    .line 355
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    goto :goto_0

    .line 348
    :pswitch_51
    invoke-interface {p0}, Landroid/os/IVold;->abortFuse()V

    .line 349
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    goto :goto_0

    .line 340
    :pswitch_52
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;

    move-result-object v1

    .line 341
    .local v1, "_arg0":Landroid/os/IVoldListener;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-interface {p0, v1}, Landroid/os/IVold;->setListener(Landroid/os/IVoldListener;)V

    .line 343
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    nop

    .line 1171
    .end local v1    # "_arg0":Landroid/os/IVoldListener;
    :goto_0
    return v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
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
