.class public abstract Lcom/android/server/pm/UserManagerInternal;
.super Ljava/lang/Object;
.source "UserManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;,
        Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;,
        Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;,
        Lcom/android/server/pm/UserManagerInternal$UserStartMode;,
        Lcom/android/server/pm/UserManagerInternal$UserAssignmentResult;,
        Lcom/android/server/pm/UserManagerInternal$OwnerType;
    }
.end annotation


# static fields
.field public static final OWNER_TYPE_DEVICE_OWNER:I = 0x0

.field public static final OWNER_TYPE_NO_OWNER:I = 0x3

.field public static final OWNER_TYPE_PROFILE_OWNER:I = 0x1

.field public static final OWNER_TYPE_PROFILE_OWNER_OF_ORGANIZATION_OWNED_DEVICE:I = 0x2

.field private static final PREFIX_USER_ASSIGNMENT_RESULT:Ljava/lang/String; = "USER_ASSIGNMENT_RESULT_"

.field private static final PREFIX_USER_START_MODE:Ljava/lang/String; = "USER_START_MODE_"

.field public static final USER_ASSIGNMENT_RESULT_FAILURE:I = -0x1

.field public static final USER_ASSIGNMENT_RESULT_SUCCESS_ALREADY_VISIBLE:I = 0x3

.field public static final USER_ASSIGNMENT_RESULT_SUCCESS_INVISIBLE:I = 0x2

.field public static final USER_ASSIGNMENT_RESULT_SUCCESS_VISIBLE:I = 0x1

.field public static final USER_START_MODE_BACKGROUND:I = 0x2

.field public static final USER_START_MODE_BACKGROUND_VISIBLE:I = 0x3

.field public static final USER_START_MODE_FOREGROUND:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldShowNotificationForBackgroundUserSounds()Z
    .locals 2

    .line 652
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111023e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 652
    :goto_0
    return v0
.end method

.method public static userAssignmentResultToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "result"    # I

    .line 577
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    const-string v1, "USER_ASSIGNMENT_RESULT_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static userStartModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 585
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    const-string v1, "USER_START_MODE_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V
.end method

.method public abstract addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V
.end method

.method public abstract addUserVisibilityListener(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;)V
.end method

.method public abstract assignUserToDisplayOnStart(IIII)I
.end method

.method public abstract assignUserToExtraDisplay(II)Z
.end method

.method public abstract createUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation
.end method

.method public abstract exists(I)Z
.end method

.method public abstract getBootUser(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation
.end method

.method public abstract getCommunalProfileId()I
.end method

.method public abstract getDisplaysAssignedToUser(I)[I
.end method

.method public abstract getLauncherUserInfo(I)Landroid/content/pm/LauncherUserInfo;
.end method

.method public abstract getMainDisplayAssignedToUser(I)I
.end method

.method public abstract getMainUserId()I
.end method

.method public abstract getProfileIds(IZ)[I
.end method

.method public abstract getProfileIdsExcludingHidden(IZ)[I
.end method

.method public abstract getProfileParentId(I)I
.end method

.method public abstract getSupervisingProfileId()I
.end method

.method public abstract getUserAssignedToDisplay(I)I
.end method

.method public abstract getUserIds()[I
.end method

.method public abstract getUserInfo(I)Landroid/content/pm/UserInfo;
.end method

.method public abstract getUserInfos()[Landroid/content/pm/UserInfo;
.end method

.method public abstract getUserProperties(I)Landroid/content/pm/UserProperties;
.end method

.method public abstract getUserRestriction(ILjava/lang/String;)Z
.end method

.method public abstract getUserTypesForStatsd([I)[I
.end method

.method public abstract getUsers(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsers(ZZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasUserRestriction(Ljava/lang/String;I)Z
.end method

.method public abstract isDeviceManaged()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isProfileAccessible(IILjava/lang/String;Z)Z
.end method

.method public abstract isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
.end method

.method public abstract isUserInitialized(I)Z
.end method

.method public abstract isUserManaged(I)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isUserRunning(I)Z
.end method

.method public abstract isUserUnlocked(I)Z
.end method

.method public abstract isUserUnlockingOrUnlocked(I)Z
.end method

.method public abstract isUserVisible(I)Z
.end method

.method public abstract isUserVisible(II)Z
.end method

.method public abstract isVisibleBackgroundFullUser(I)Z
.end method

.method public abstract onEphemeralUserStop(I)V
.end method

.method public abstract onSystemUserVisibilityChanged(Z)V
.end method

.method public abstract removeAllUsers()V
.end method

.method public abstract removeUserEvenWhenDisallowed(I)Z
.end method

.method public abstract removeUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V
.end method

.method public abstract removeUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V
.end method

.method public abstract removeUserState(I)V
.end method

.method public abstract removeUserVisibilityListener(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;)V
.end method

.method public abstract setDefaultCrossProfileIntentFilters(II)V
.end method

.method public abstract setDeviceManaged(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setDevicePolicyUserRestrictions(ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V
.end method

.method public abstract setForceEphemeralUsers(Z)V
.end method

.method public abstract setUserIcon(ILandroid/graphics/Bitmap;)V
.end method

.method public abstract setUserManaged(IZ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setUserRestriction(ILjava/lang/String;Z)V
.end method

.method public abstract setUserState(II)V
.end method

.method public abstract shouldIgnorePrepareStorageErrors(I)Z
.end method

.method public abstract unassignUserFromDisplayOnStop(I)V
.end method

.method public abstract unassignUserFromExtraDisplay(II)Z
.end method
