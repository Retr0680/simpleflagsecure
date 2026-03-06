.class public Lcom/android/server/wm/utils/OptPropFactory;
.super Ljava/lang/Object;
.source "OptPropFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;,
        Lcom/android/server/wm/utils/OptPropFactory$OptProp;
    }
.end annotation


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$2O4xsgobKCcu56KjS-bsyJrHb_k(Lcom/android/server/wm/utils/OptPropFactory;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/utils/OptPropFactory;->lambda$create$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$A7T62WTf2VHvKQdZKzlFqzIymTM(Lcom/android/server/wm/utils/OptPropFactory;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/utils/OptPropFactory;->lambda$create$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 54
    iput-object p2, p0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageName:Ljava/lang/String;

    .line 55
    iput p3, p0, Lcom/android/server/wm/utils/OptPropFactory;->mUserId:I

    .line 56
    return-void
.end method

.method private synthetic lambda$create$0(Ljava/lang/String;)Z
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/wm/utils/OptPropFactory;->mUserId:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v0

    .line 67
    return v0
.end method

.method private synthetic lambda$create$1(Ljava/lang/String;)Z
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/wm/utils/OptPropFactory;->mUserId:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v0

    .line 83
    return v0
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/utils/OptPropFactory;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->-$$Nest$smcreate(Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "gateCondition"    # Ljava/util/function/BooleanSupplier;

    .line 82
    new-instance v0, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/utils/OptPropFactory;Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->-$$Nest$smcreate(Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object v0

    return-object v0
.end method
