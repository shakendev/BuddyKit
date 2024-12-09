//
//  FSNDefaultStorage.swift
//  BuddyKit
//
//  Created by Dimka Novikov on 09.12.2024.
//  Copyright © 2024 DDEC. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - FSNDefaultStorage

///
///
///
@available(iOS 18.0, *)
public final class FSNDefaultStorage {

    // MARK: - Private properties

    private let userDefaults = UserDefaults.standard

    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()



    // MARK: - Init

    ///
    ///
    ///
    public init() { }
}



// MARK: - FSNDefaultLoadable

extension FSNDefaultStorage: FSNDefaultLoadable {

    // MARK: - Public methods

    ///
    ///
    ///
    public func load<Object: FSNDataDecodable>(_ type: Object.Type, forKey key: String) -> Object? {
        guard
            let object = userDefaults.object(forKey: key) as? Data,
            let loadedObject = try? decoder.decode(type, from: object)
        else {
            return nil
        }

        return loadedObject
    }
}



// MARK: - FSNDefaultRemovable

extension FSNDefaultStorage: FSNDefaultRemovable {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    public func remove(forKey key: String) -> Bool {
        userDefaults.removeObject(forKey: key)

        return true
    }

    ///
    ///
    ///
    @discardableResult
    public func removeAll() -> Bool {
        guard let bundleID = Bundle.main.bundleIdentifier else {
            return false
        }

        userDefaults.removePersistentDomain(forName: bundleID)

        userDefaults.synchronize()

        return true
    }
}



// MARK: - FSNDefaultReplaceable

extension FSNDefaultStorage: FSNDefaultReplaceable {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    public func replace<Object: FSNDataEncodable>(_ object: Object, forKey key: String) -> Bool {
        save(object, forKey: key)
    }
}



// MARK: - FSNDefaultSaveable

extension FSNDefaultStorage: FSNDefaultSaveable {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    public func save<Object: FSNDataEncodable>(_ object: Object, forKey key: String) -> Bool {
        guard let data = try? encoder.encode(object) else {
            return false
        }

        userDefaults.set(data, forKey: key)

        return true
    }
}
