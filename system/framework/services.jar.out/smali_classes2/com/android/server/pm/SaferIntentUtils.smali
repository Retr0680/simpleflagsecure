.class public Lcom/android/server/pm/SaferIntentUtils;
.super Ljava/lang/Object;
.source "SaferIntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    }
.end annotation


# static fields
.field public static final DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:J = 0x99c835cL

.field private static final IMPLICIT_INTENTS_ONLY_MATCH_EXPORTED_COMPONENTS:J = 0xdabca61L


# direct methods
.method public static synthetic $r8$lambda$ET4wDE7Im4gCE7ebSKX-kIwikNI()Ljava/lang/Boolean;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/pm/SaferIntentUtils;->lambda$static$0()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$mGphpbTqJdvD1YYxyb0Qke4Jry4(I)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/SaferIntentUtils;->lambda$reportUnsafeIntentEvent$1(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 78
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .locals 10
    .param p0, "args"    # Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    .param p1, "componentList"    # Ljava/util/List;

    .line 216
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    invoke-static {v0}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    check-cast v0, Lcom/android/server/pm/Computer;

    .line 220
    .local v0, "computer":Lcom/android/server/pm/Computer;
    const/4 v1, 0x0

    .line 222
    .local v1, "resolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    nop

    .line 223
    const/4 v2, 0x0

    .line 225
    .local v2, "enforce":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_8

    .line 226
    const/4 v5, 0x1

    .line 228
    .local v5, "match":Z
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 229
    .local v6, "c":Ljava/lang/Object;
    instance-of v7, v6, Landroid/content/pm/ResolveInfo;

    if-eqz v7, :cond_5

    move-object v7, v6

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 230
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_2

    .line 232
    return-void

    .line 234
    :cond_2
    if-nez v1, :cond_3

    .line 235
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v1

    .line 237
    :cond_3
    nop

    .line 238
    invoke-virtual {v7}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isReceiver:Z

    .line 237
    invoke-static {v8, v1, v9}, Lcom/android/server/pm/SaferIntentUtils;->infoToComponent(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/resolution/ComponentResolverApi;Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    move-result-object v8

    .line 239
    .local v8, "comp":Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 240
    const/4 v5, 0x0

    .line 242
    .end local v8    # "comp":Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    :cond_4
    goto :goto_1

    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    instance-of v7, v6, Landroid/content/IntentFilter;

    if-eqz v7, :cond_6

    .line 243
    const/4 v5, 0x0

    .line 246
    :cond_6
    :goto_1
    if-nez v5, :cond_7

    .line 247
    invoke-virtual {p0, v4, v2}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    .line 249
    if-eqz v2, :cond_7

    .line 250
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Blocking intent with null action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 225
    .end local v5    # "match":Z
    .end local v6    # "c":Ljava/lang/Object;
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_8
    nop

    .line 255
    .end local v3    # "i":I
    return-void
.end method

.method public static enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .locals 0
    .param p0, "args"    # Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SaferIntentUtils$IntentArgs;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 269
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    nop

    .line 270
    invoke-static {p0, p1}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatchingWithIntentMatchingFlags(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    .line 274
    return-void
.end method

.method private static enforceIntentFilterMatchingWithAppCompat(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .locals 18
    .param p0, "args"    # Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SaferIntentUtils$IntentArgs;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 375
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 378
    :cond_0
    iget v2, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    invoke-static {v2}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 380
    :cond_1
    iget-object v2, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    check-cast v2, Lcom/android/server/pm/Computer;

    .line 381
    .local v2, "computer":Lcom/android/server/pm/Computer;
    invoke-interface {v2}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v3

    .line 383
    .local v3, "resolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    const/4 v4, 0x0

    .line 387
    .local v4, "logPrinter":Landroid/util/Printer;
    nop

    .line 388
    const-wide/32 v5, 0x99c835c

    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isChangeEnabled(J)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v6

    .line 389
    .local v5, "enforceMatch":Z
    :goto_0
    nop

    .line 390
    move v8, v6

    .line 392
    .local v8, "blockNullAction":Z
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v7

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_e

    .line 393
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v10}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v10

    .line 396
    .local v10, "info":Landroid/content/pm/ComponentInfo;
    iget v11, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    iget-object v12, v10, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11, v12}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 397
    move/from16 v16, v6

    goto/16 :goto_5

    .line 400
    :cond_3
    iget-boolean v11, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isReceiver:Z

    invoke-static {v10, v3, v11}, Lcom/android/server/pm/SaferIntentUtils;->infoToComponent(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/resolution/ComponentResolverApi;Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    move-result-object v11

    .line 402
    .local v11, "comp":Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    if-eqz v11, :cond_c

    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 403
    move/from16 v16, v6

    goto/16 :goto_5

    .line 406
    :cond_4
    const/4 v12, 0x0

    .line 408
    .local v12, "match":Ljava/lang/Boolean;
    iget-object v13, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_6

    .line 409
    if-eqz v5, :cond_5

    if-eqz v8, :cond_5

    move v13, v7

    goto :goto_2

    :cond_5
    move v13, v6

    :goto_2
    invoke-virtual {v0, v7, v13}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    .line 412
    if-eqz v8, :cond_6

    .line 414
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 418
    :cond_6
    if-nez v12, :cond_9

    .line 420
    const/4 v13, 0x0

    .local v13, "j":I
    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "size":I
    :goto_3
    if-ge v13, v14, :cond_8

    .line 421
    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v15

    .line 422
    .local v15, "intentFilter":Landroid/content/IntentFilter;
    move/from16 v16, v6

    iget-object v6, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    move/from16 v17, v7

    iget-object v7, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolvedType:Ljava/lang/String;

    invoke-static {v15, v6, v7}, Lcom/android/server/IntentResolver;->intentMatchesFilter(Landroid/content/IntentFilter;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 424
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 425
    goto :goto_4

    .line 422
    :cond_7
    nop

    .line 420
    .end local v15    # "intentFilter":Landroid/content/IntentFilter;
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v16

    move/from16 v7, v17

    goto :goto_3

    :cond_8
    move/from16 v16, v6

    move/from16 v17, v7

    goto :goto_4

    .line 418
    .end local v13    # "j":I
    .end local v14    # "size":I
    :cond_9
    move/from16 v16, v6

    move/from16 v17, v7

    .line 435
    :goto_4
    if-nez v12, :cond_a

    .line 436
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v5}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    .line 439
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 442
    :cond_a
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_b

    .line 444
    nop

    .line 445
    iget-object v6, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    move/from16 v7, v17

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addExtendedFlags(I)Landroid/content/Intent;

    .line 447
    if-eqz v5, :cond_d

    .line 448
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Intent does not match component\'s intent filter: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "PackageManager"

    invoke-static {v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Access blocked: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 442
    :cond_b
    move/from16 v7, v17

    goto :goto_5

    .line 402
    .end local v12    # "match":Ljava/lang/Boolean;
    :cond_c
    move/from16 v16, v6

    .line 392
    .end local v10    # "info":Landroid/content/pm/ComponentInfo;
    .end local v11    # "comp":Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    :cond_d
    :goto_5
    add-int/lit8 v9, v9, -0x1

    move/from16 v6, v16

    goto/16 :goto_1

    :cond_e
    nop

    .line 459
    .end local v9    # "i":I
    return-void
.end method

.method private static enforceIntentFilterMatchingWithIntentMatchingFlags(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .locals 17
    .param p0, "args"    # Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SaferIntentUtils$IntentArgs;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 284
    :cond_0
    iget v2, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    invoke-static {v2}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 286
    :cond_1
    iget-object v2, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    check-cast v2, Lcom/android/server/pm/Computer;

    .line 287
    .local v2, "computer":Lcom/android/server/pm/Computer;
    invoke-interface {v2}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v3

    .line 289
    .local v3, "resolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    const/4 v4, 0x0

    .line 293
    .local v4, "logPrinter":Landroid/util/Printer;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_13

    .line 294
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v7}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v7

    .line 297
    .local v7, "info":Landroid/content/pm/ComponentInfo;
    iget v8, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    iget-object v9, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8, v9}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 298
    move-object/from16 v16, v2

    move v13, v6

    goto/16 :goto_7

    .line 301
    :cond_2
    iget-boolean v8, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isReceiver:Z

    invoke-static {v7, v3, v8}, Lcom/android/server/pm/SaferIntentUtils;->infoToComponent(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/resolution/ComponentResolverApi;Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    move-result-object v8

    .line 303
    .local v8, "comp":Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    if-eqz v8, :cond_11

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 304
    move-object/from16 v16, v2

    move v13, v6

    goto/16 :goto_7

    .line 307
    :cond_3
    const/4 v9, 0x1

    .line 308
    .local v9, "enforceIntentFilter":Z
    const/4 v10, 0x0

    .line 310
    .local v10, "allowNullAction":Z
    nop

    .line 311
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntentMatchingFlags()I

    move-result v11

    .line 312
    .local v11, "flags":I
    if-eqz v11, :cond_4

    and-int/lit8 v12, v11, 0x1

    if-eq v12, v6, :cond_4

    and-int/lit8 v12, v11, 0x2

    if-nez v12, :cond_5

    .line 317
    :cond_4
    const/4 v9, 0x0

    .line 319
    :cond_5
    and-int/lit8 v12, v11, 0x4

    const/4 v13, 0x4

    if-ne v12, v13, :cond_6

    .line 321
    const/4 v10, 0x1

    .line 325
    .end local v11    # "flags":I
    :cond_6
    iget-object v11, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_7

    move v11, v6

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    .line 326
    .local v11, "hasNullAction":Z
    :goto_1
    const/4 v12, 0x0

    .line 328
    .local v12, "intentMatchesComponent":Z
    const/4 v13, 0x0

    .local v13, "j":I
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "size":I
    :goto_2
    if-ge v13, v14, :cond_9

    .line 329
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v15

    .line 330
    .local v15, "intentFilter":Landroid/content/IntentFilter;
    iget-object v6, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    move-object/from16 v16, v2

    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .local v16, "computer":Lcom/android/server/pm/Computer;
    iget-object v2, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolvedType:Ljava/lang/String;

    invoke-static {v15, v6, v2}, Lcom/android/server/IntentResolver;->intentMatchesFilter(Landroid/content/IntentFilter;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 332
    const/4 v12, 0x1

    .line 333
    goto :goto_3

    .line 330
    :cond_8
    nop

    .line 328
    .end local v15    # "intentFilter":Landroid/content/IntentFilter;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v16

    const/4 v6, 0x1

    goto :goto_2

    .end local v16    # "computer":Lcom/android/server/pm/Computer;
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    :cond_9
    move-object/from16 v16, v2

    .line 337
    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v13    # "j":I
    .end local v14    # "size":I
    .restart local v16    # "computer":Lcom/android/server/pm/Computer;
    :goto_3
    const/4 v2, 0x0

    .line 338
    .local v2, "blockIntent":Z
    if-eqz v9, :cond_c

    .line 339
    if-eqz v11, :cond_a

    if-eqz v10, :cond_b

    :cond_a
    if-nez v12, :cond_c

    .line 340
    :cond_b
    const/4 v2, 0x1

    .line 344
    :cond_c
    if-eqz v11, :cond_d

    .line 345
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v2}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    goto :goto_4

    .line 347
    :cond_d
    if-nez v12, :cond_e

    .line 348
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v2}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    .line 353
    :cond_e
    :goto_4
    if-nez v11, :cond_f

    if-nez v12, :cond_10

    :cond_f
    goto :goto_5

    :cond_10
    const/4 v13, 0x1

    goto :goto_6

    .line 354
    :goto_5
    iget-object v6, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addExtendedFlags(I)Landroid/content/Intent;

    .line 357
    :goto_6
    if-eqz v2, :cond_12

    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Intent does not match component\'s intent filter: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v14, "PackageManager"

    invoke-static {v14, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Access blocked: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7

    .line 303
    .end local v9    # "enforceIntentFilter":Z
    .end local v10    # "allowNullAction":Z
    .end local v11    # "hasNullAction":Z
    .end local v12    # "intentMatchesComponent":Z
    .end local v16    # "computer":Lcom/android/server/pm/Computer;
    .local v2, "computer":Lcom/android/server/pm/Computer;
    :cond_11
    move-object/from16 v16, v2

    move v13, v6

    .line 293
    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v7    # "info":Landroid/content/pm/ComponentInfo;
    .end local v8    # "comp":Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .restart local v16    # "computer":Lcom/android/server/pm/Computer;
    :cond_12
    :goto_7
    add-int/lit8 v5, v5, -0x1

    move v6, v13

    move-object/from16 v2, v16

    goto/16 :goto_0

    .end local v16    # "computer":Lcom/android/server/pm/Computer;
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    :cond_13
    nop

    .line 368
    .end local v5    # "i":I
    return-void
.end method

.method public static filterNonExportedComponents(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .locals 6
    .param p0, "args"    # Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    .param p1, "componentList"    # Ljava/util/List;

    .line 469
    nop

    nop

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 470
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    nop

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 471
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    nop

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    .line 472
    invoke-static {v0}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 476
    :cond_0
    nop

    .line 477
    const-wide/32 v0, 0xdabca61

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isChangeEnabled(J)Z

    move-result v0

    .line 478
    .local v0, "enforce":Z
    const/4 v1, 0x0

    .line 480
    .local v1, "violated":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 481
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 482
    .local v3, "c":Ljava/lang/Object;
    instance-of v4, v3, Landroid/content/pm/ResolveInfo;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 483
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v5

    iget-boolean v5, v5, Landroid/content/pm/ComponentInfo;->exported:Z

    if-eqz v5, :cond_2

    .line 484
    goto :goto_1

    .line 486
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    instance-of v4, v3, Lcom/android/server/am/BroadcastFilter;

    nop

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .line 487
    .local v4, "broadcastFilter":Lcom/android/server/am/BroadcastFilter;
    iget-boolean v5, v4, Lcom/android/server/am/BroadcastFilter;->exported:Z

    if-eqz v5, :cond_2

    .line 488
    goto :goto_1

    .line 493
    .end local v4    # "broadcastFilter":Lcom/android/server/am/BroadcastFilter;
    :cond_2
    const/4 v1, 0x1

    .line 494
    if-nez v0, :cond_3

    .line 495
    goto :goto_2

    .line 497
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 480
    .end local v3    # "c":Ljava/lang/Object;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 500
    .end local v2    # "i":I
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 501
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    .line 505
    :cond_6
    return-void

    .line 473
    .end local v0    # "enforce":Z
    .end local v1    # "violated":Z
    :cond_7
    :goto_3
    return-void
.end method

.method private static infoToComponent(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/resolution/ComponentResolverApi;Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ComponentInfo;
    .param p1, "resolver"    # Lcom/android/server/pm/resolution/ComponentResolverApi;
    .param p2, "isReceiver"    # Z

    .line 111
    instance-of v0, p0, Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    .line 112
    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object v0

    return-object v0

    .line 117
    :cond_1
    instance-of v0, p0, Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedService;

    move-result-object v0

    return-object v0

    .line 121
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported component type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$enforceIntentFilterMatchingWithAppCompat$3(Landroid/util/Printer;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)V
    .locals 2
    .param p0, "logPrinter"    # Landroid/util/Printer;
    .param p1, "f"    # Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 452
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, p0, v1}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$enforceIntentFilterMatchingWithIntentMatchingFlags$2(Landroid/util/Printer;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)V
    .locals 2
    .param p0, "logPrinter"    # Landroid/util/Printer;
    .param p1, "f"    # Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 362
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, p0, v1}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$reportUnsafeIntentEvent$1(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 132
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic lambda$static$0()Ljava/lang/Boolean;
    .locals 1

    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static reportUnsafeIntentEvent(IIILandroid/content/Intent;Ljava/lang/String;Z)V
    .locals 11
    .param p0, "event"    # I
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "blocked"    # Z

    .line 131
    invoke-virtual {p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    move-object v7, v0

    .line 133
    .local v7, "categories":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_1
    nop

    .line 135
    .local v4, "component":Ljava/lang/String;
    nop

    .line 139
    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 143
    invoke-virtual {p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 135
    const/16 v1, 0x23d

    move v2, p0

    move v3, p1

    move-object v8, p4

    move/from16 v10, p5

    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 145
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 146
    invoke-virtual {v0, p2, p0, p3}, Landroid/app/ActivityManagerInternal;->triggerUnsafeIntentStrictMode(IILandroid/content/Intent;)V

    .line 147
    return-void
.end method
