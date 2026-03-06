.class final Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field private mDataClearedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 803
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 804
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    .line 801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    .line 805
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    return-void
.end method

.method private clearPackageChangeState()V
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 855
    return-void
.end method

.method private onFinishPackageChangesInternal()V
    .locals 26

    .line 858
    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v2

    .line 859
    .local v2, "userId":I
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    .line 861
    .local v3, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v0, v3, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryRawInputMethodServiceMap(Landroid/content/Context;I)Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 863
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v4

    .line 865
    .local v4, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    const/4 v0, 0x0

    .line 866
    .local v0, "curIm":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    .line 867
    .local v5, "curInputMethodId":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object v6

    .line 869
    .local v6, "methodList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 870
    .local v7, "imesToClearAdditionalSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 871
    .local v8, "imesToBeDisabled":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    .line 872
    .local v9, "numImes":I
    const/4 v10, 0x0

    move/from16 v25, v10

    move-object v10, v0

    move/from16 v0, v25

    .local v0, "i":I
    .local v10, "curIm":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    const/4 v11, 0x3

    if-ge v0, v9, :cond_4

    .line 873
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 874
    .local v13, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    .line 875
    .local v14, "imiId":Ljava/lang/String;
    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 876
    move-object v10, v13

    .line 878
    :cond_0
    iget-object v15, v1, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 879
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_1
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v12

    .line 882
    .local v12, "change":I
    if-ne v12, v11, :cond_2

    .line 883
    const-string v11, "InputMethodManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    const-string v0, "Input method uninstalled, disabling: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 885
    .end local v17    # "i":I
    .restart local v0    # "i":I
    :cond_2
    move/from16 v17, v0

    .end local v0    # "i":I
    .restart local v17    # "i":I
    const/4 v0, 0x1

    if-ne v12, v0, :cond_3

    .line 886
    const-string v0, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Input method reinstalling, clearing additional subtypes: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 886
    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    .end local v12    # "change":I
    .end local v13    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v14    # "imiId":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    :cond_4
    move/from16 v17, v0

    const/4 v0, 0x1

    .line 893
    .end local v0    # "i":I
    invoke-static {v2}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v12

    .line 894
    .local v12, "additionalSubtypeMap":Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    nop

    .line 895
    invoke-virtual {v12, v7}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->cloneWithRemoveOrSelf(Ljava/util/Collection;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v13

    .line 896
    .local v13, "newAdditionalSubtypeMap":Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    const/4 v14, 0x0

    if-eq v13, v12, :cond_5

    goto :goto_2

    :cond_5
    move v0, v14

    :goto_2
    move v15, v0

    .line 898
    .local v15, "additionalSubtypeChanged":Z
    if-eqz v15, :cond_6

    .line 899
    nop

    .line 900
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v0

    .line 899
    invoke-static {v2, v13, v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->putAndSave(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V

    .line 903
    :cond_6
    iget-object v0, v3, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/RawInputMethodMap;

    iget-object v11, v3, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 906
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    .line 903
    invoke-virtual {v0, v13, v14, v11}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v11

    .line 908
    .local v11, "newMethodMap":Lcom/android/server/inputmethod/InputMethodMap;
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/android/server/inputmethod/InputMethodMap;->areSame(Lcom/android/server/inputmethod/InputMethodMap;Lcom/android/server/inputmethod/InputMethodMap;)Z

    move-result v17

    .line 909
    .local v17, "noUpdate":Z
    if-eqz v17, :cond_7

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 910
    return-void

    .line 914
    :cond_7
    const-class v18, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v18

    .line 915
    :try_start_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move/from16 v19, v0

    .line 916
    .local v19, "numImesToBeDisabled":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    move/from16 v14, v19

    .end local v19    # "numImesToBeDisabled":I
    .local v14, "numImesToBeDisabled":I
    if-ge v0, v14, :cond_8

    .line 917
    move-object/from16 v19, v3

    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .local v19, "userData":Lcom/android/server/inputmethod/UserData;
    :try_start_1
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v0

    .end local v0    # "i":I
    .local v21, "i":I
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v20, v4

    const/4 v4, 0x0

    .end local v4    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .local v20, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    :try_start_2
    invoke-static {v3, v0, v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetInputMethodEnabledLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;ZI)Z

    .line 916
    add-int/lit8 v0, v21, 0x1

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move/from16 v19, v14

    const/4 v14, 0x0

    .end local v21    # "i":I
    .restart local v0    # "i":I
    goto :goto_3

    .line 971
    .end local v0    # "i":I
    .end local v14    # "numImesToBeDisabled":I
    :catchall_0
    move-exception v0

    move-object/from16 v23, v5

    goto/16 :goto_9

    .end local v20    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .restart local v4    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v23, v5

    .end local v4    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .restart local v20    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    goto/16 :goto_9

    .line 916
    .end local v19    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v20    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .restart local v0    # "i":I
    .restart local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v4    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .restart local v14    # "numImesToBeDisabled":I
    :cond_8
    move/from16 v21, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .line 920
    .end local v0    # "i":I
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v4    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .restart local v19    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v20    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    if-eqz v17, :cond_9

    .line 921
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 923
    :cond_9
    nop

    .line 924
    :try_start_3
    invoke-static {v11, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 923
    invoke-static {v2, v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 925
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(ZI)V

    .line 927
    const/4 v3, 0x0

    .line 929
    .local v3, "changed":Z
    if-eqz v10, :cond_d

    .line 930
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 931
    .local v4, "change":I
    const/4 v0, 0x2

    if-eq v4, v0, :cond_a

    const/4 v0, 0x3

    if-ne v4, v0, :cond_b

    :cond_a
    goto :goto_4

    :cond_b
    move/from16 v24, v3

    move-object/from16 v23, v5

    goto/16 :goto_6

    .line 933
    :goto_4
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 934
    invoke-static {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$smgetPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v16, v0

    .line 935
    .local v16, "userAwarePackageManager":Landroid/content/pm/PackageManager;
    const/16 v21, 0x0

    .line 937
    .local v21, "si":Landroid/content/pm/ServiceInfo;
    :try_start_4
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 938
    const-wide/16 v22, 0x0

    move/from16 v24, v3

    .end local v3    # "changed":Z
    .local v24, "changed":Z
    :try_start_5
    invoke-static/range {v22 .. v23}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v3
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 937
    move/from16 v22, v4

    move-object/from16 v4, v16

    .end local v16    # "userAwarePackageManager":Landroid/content/pm/PackageManager;
    .local v4, "userAwarePackageManager":Landroid/content/pm/PackageManager;
    .local v22, "change":I
    :try_start_6
    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v21, v0

    .line 940
    goto :goto_5

    .line 939
    :catch_0
    move-exception v0

    goto :goto_5

    .end local v22    # "change":I
    .local v4, "change":I
    .restart local v16    # "userAwarePackageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v0

    move/from16 v22, v4

    move-object/from16 v4, v16

    .end local v16    # "userAwarePackageManager":Landroid/content/pm/PackageManager;
    .local v4, "userAwarePackageManager":Landroid/content/pm/PackageManager;
    .restart local v22    # "change":I
    goto :goto_5

    .end local v22    # "change":I
    .end local v24    # "changed":Z
    .restart local v3    # "changed":Z
    .local v4, "change":I
    .restart local v16    # "userAwarePackageManager":Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v0

    move/from16 v24, v3

    move/from16 v22, v4

    move-object/from16 v4, v16

    .line 941
    .end local v3    # "changed":Z
    .end local v16    # "userAwarePackageManager":Landroid/content/pm/PackageManager;
    .local v4, "userAwarePackageManager":Landroid/content/pm/PackageManager;
    .restart local v22    # "change":I
    .restart local v24    # "changed":Z
    :goto_5
    if-nez v21, :cond_c

    .line 944
    :try_start_7
    const-string v0, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    .end local v4    # "userAwarePackageManager":Landroid/content/pm/PackageManager;
    .restart local v16    # "userAwarePackageManager":Landroid/content/pm/PackageManager;
    const-string v4, "Current input method removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    .line 946
    .local v0, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 947
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 946
    move-object/from16 v23, v5

    const/4 v5, 0x0

    .end local v5    # "curInputMethodId":Ljava/lang/String;
    .local v23, "curInputMethodId":Ljava/lang/String;
    :try_start_8
    invoke-static {v3, v5, v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mupdateSystemUiLocked(Lcom/android/server/inputmethod/InputMethodManagerService;III)V

    .line 948
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mchooseNewDefaultIMELocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 949
    const/4 v3, 0x1

    .line 950
    .end local v24    # "changed":Z
    .restart local v3    # "changed":Z
    const/4 v10, 0x0

    .line 951
    const-string v4, "InputMethodManagerService"

    const-string v5, "Unsetting current input method"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string v5, ""

    invoke-static {v4, v5, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mresetSelectedInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;I)V

    goto :goto_7

    .line 971
    .end local v0    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v3    # "changed":Z
    .end local v14    # "numImesToBeDisabled":I
    .end local v16    # "userAwarePackageManager":Landroid/content/pm/PackageManager;
    .end local v21    # "si":Landroid/content/pm/ServiceInfo;
    .end local v22    # "change":I
    :catchall_2
    move-exception v0

    goto :goto_9

    .end local v23    # "curInputMethodId":Ljava/lang/String;
    .restart local v5    # "curInputMethodId":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v23, v5

    .end local v5    # "curInputMethodId":Ljava/lang/String;
    .restart local v23    # "curInputMethodId":Ljava/lang/String;
    goto :goto_9

    .line 941
    .end local v23    # "curInputMethodId":Ljava/lang/String;
    .restart local v4    # "userAwarePackageManager":Landroid/content/pm/PackageManager;
    .restart local v5    # "curInputMethodId":Ljava/lang/String;
    .restart local v14    # "numImesToBeDisabled":I
    .restart local v21    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v22    # "change":I
    .restart local v24    # "changed":Z
    :cond_c
    move-object/from16 v16, v4

    move-object/from16 v23, v5

    .end local v4    # "userAwarePackageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "curInputMethodId":Ljava/lang/String;
    .restart local v16    # "userAwarePackageManager":Landroid/content/pm/PackageManager;
    .restart local v23    # "curInputMethodId":Ljava/lang/String;
    goto :goto_6

    .line 929
    .end local v16    # "userAwarePackageManager":Landroid/content/pm/PackageManager;
    .end local v21    # "si":Landroid/content/pm/ServiceInfo;
    .end local v22    # "change":I
    .end local v23    # "curInputMethodId":Ljava/lang/String;
    .end local v24    # "changed":Z
    .restart local v3    # "changed":Z
    .restart local v5    # "curInputMethodId":Ljava/lang/String;
    :cond_d
    move/from16 v24, v3

    move-object/from16 v23, v5

    .line 958
    :cond_e
    :goto_6
    move/from16 v3, v24

    .end local v5    # "curInputMethodId":Ljava/lang/String;
    .restart local v23    # "curInputMethodId":Ljava/lang/String;
    :goto_7
    if-nez v10, :cond_f

    .line 961
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mchooseNewDefaultIMELocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)Z

    move-result v0

    move v3, v0

    goto :goto_8

    .line 962
    :cond_f
    if-nez v3, :cond_10

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 965
    const/4 v3, 0x1

    .line 968
    :cond_10
    :goto_8
    if-eqz v3, :cond_11

    .line 969
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(ZI)V

    .line 971
    .end local v3    # "changed":Z
    .end local v14    # "numImesToBeDisabled":I
    :cond_11
    monitor-exit v18

    .line 972
    return-void

    .line 971
    .end local v19    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v20    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .end local v23    # "curInputMethodId":Ljava/lang/String;
    .local v3, "userData":Lcom/android/server/inputmethod/UserData;
    .local v4, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .restart local v5    # "curInputMethodId":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v23, v5

    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v4    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .end local v5    # "curInputMethodId":Ljava/lang/String;
    .restart local v19    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v20    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .restart local v23    # "curInputMethodId":Ljava/lang/String;
    :goto_9
    monitor-exit v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0
.end method


# virtual methods
.method public onBeginPackageChanges()V
    .locals 0

    .line 838
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    .line 839
    return-void
.end method

.method public onFinishPackageChanges()V
    .locals 0

    .line 848
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->onFinishPackageChangesInternal()V

    .line 849
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    .line 850
    return-void
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .line 809
    move-object/from16 v1, p2

    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    .line 810
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 811
    .local v0, "userId":I
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    .line 812
    .local v3, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    .line 813
    .local v4, "curInputMethodId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object v5

    .line 814
    .local v5, "methodList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 815
    .local v6, "numImes":I
    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 816
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_3

    .line 817
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 818
    .local v9, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 819
    array-length v10, v1

    move v11, v7

    :goto_1
    if-ge v11, v10, :cond_2

    aget-object v12, v1, v11

    .line 820
    .local v12, "pkg":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 821
    const/4 v7, 0x1

    if-nez p4, :cond_0

    .line 822
    monitor-exit v2

    return v7

    .line 832
    .end local v0    # "userId":I
    .end local v3    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .end local v4    # "curInputMethodId":Ljava/lang/String;
    .end local v5    # "methodList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v6    # "numImes":I
    .end local v8    # "i":I
    .end local v9    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v12    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 824
    .restart local v0    # "userId":I
    .restart local v3    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .restart local v4    # "curInputMethodId":Ljava/lang/String;
    .restart local v5    # "methodList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v6    # "numImes":I
    .restart local v8    # "i":I
    .restart local v9    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v12    # "pkg":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string v11, ""

    invoke-static {v10, v11, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mresetSelectedInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;I)V

    .line 825
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v10, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mchooseNewDefaultIMELocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)Z

    .line 826
    monitor-exit v2

    return v7

    .line 820
    :cond_1
    nop

    .line 819
    .end local v12    # "pkg":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 816
    .end local v9    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 832
    .end local v0    # "userId":I
    .end local v3    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .end local v4    # "curInputMethodId":Ljava/lang/String;
    .end local v5    # "methodList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v6    # "numImes":I
    .end local v8    # "i":I
    :cond_3
    monitor-exit v2

    .line 833
    return v7

    .line 832
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 843
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    return-void
.end method
