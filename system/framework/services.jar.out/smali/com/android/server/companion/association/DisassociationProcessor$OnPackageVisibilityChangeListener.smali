.class Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;
.super Ljava/lang/Object;
.source "DisassociationProcessor.java"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/association/DisassociationProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPackageVisibilityChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/association/DisassociationProcessor;


# direct methods
.method private constructor <init>(Lcom/android/server/companion/association/DisassociationProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/companion/association/DisassociationProcessor;Lcom/android/server/companion/association/DisassociationProcessor-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;)V

    return-void
.end method


# virtual methods
.method public onUidImportance(II)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "importance"    # I

    .line 290
    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    .line 291
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-static {v0}, Lcom/android/server/companion/association/DisassociationProcessor;->-$$Nest$fgetmPackageManager(Lcom/android/server/companion/association/DisassociationProcessor;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_2

    :cond_1
    goto :goto_2

    .line 302
    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 303
    .local v1, "userId":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 304
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-static {v5}, Lcom/android/server/companion/association/DisassociationProcessor;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/association/DisassociationProcessor;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Lcom/android/server/companion/association/AssociationStore;->getRevokedAssociations(ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/companion/AssociationInfo;

    .line 306
    .local v6, "association":Landroid/companion/AssociationInfo;
    iget-object v7, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getId()I

    move-result v8

    const-string/jumbo v9, "revoked"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    .line 307
    .end local v6    # "association":Landroid/companion/AssociationInfo;
    goto :goto_1

    .line 303
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 310
    :cond_4
    iget-object v2, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-static {v2}, Lcom/android/server/companion/association/DisassociationProcessor;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/association/DisassociationProcessor;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/companion/association/AssociationStore;->getRevokedAssociations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 311
    iget-object v2, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-static {v2}, Lcom/android/server/companion/association/DisassociationProcessor;->-$$Nest$mstopListening(Lcom/android/server/companion/association/DisassociationProcessor;)V

    .line 313
    :cond_5
    return-void

    .line 299
    .end local v1    # "userId":I
    :goto_2
    return-void
.end method
